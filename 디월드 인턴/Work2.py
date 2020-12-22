import os
from PyQt5.QtWidgets import *
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QPixmap, QImage
from PyQt5 import uic
import PyQt5
import imutils
import cv2
import copy
import numpy as np
from math import sqrt

class Work(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = uic.loadUi("Work2.ui", self)
        self.setAcceptDrops(True)

        self.image = np.array([])
        self.value1 = 0
        self.value2 = 0
        self.file_path = ''
        self.image_thr = np.array([])
        self.bboxs=[] #박스값
        self.center_point = [] # 중심점
        # 객체 잡는 이미지
        self.image_object = []
        self.point = [] # scroll 할 이미지
        self.point_value = 0 #확대 비율


        self.Blur_radioButton.clicked.connect(self.Change_filter)
        self.Brightness_radioButton.clicked.connect(self.Change_filter)
        self.Gaussian_radioButton.clicked.connect(self.Change_filter)
        self.No_radioButton.clicked.connect(self.Change_filter)
        self.Laplacian_radioButton.clicked.connect(self.Change_filter)

        self.Filter_Slider.valueChanged['int'].connect(self.Change_value_Filter)
        self.Threshold_Slide.valueChanged['int'].connect(self.Change_value_Threshold)

        self.Num2_label.setText(str(self.value1))
        self.Num1_label.setText(str(self.value2))
        # 테이블 Column 정하기
        self.tableWidget.setColumnCount(11)
        self.tableWidget.setHorizontalHeaderLabels(
            ("index", "X", "Y", "size", "GD", "Area", "Long", "Short", "Min", "Max", "Mean"))
        self.Run_Button.clicked.connect(self.Search_Info)
        self.tableWidget.cellClicked.connect(self.set_box)

    # 드래그 이벤트
    def dragEnterEvent(self, event):
        if event.mimeData().hasImage:
            event.accept()
        else:
            event.ignore()

    def dragMoveEvent(self, event):
        if event.mimeData().hasImage:
            event.accept()
        else:
            event.ignore()

    def dropEvent(self, event):
        if event.mimeData().hasImage:
            event.setDropAction(Qt.CopyAction)
            file_path = event.mimeData().urls()[0].toLocalFile()
            self.file_path = file_path
            self.image = cv2.imread(file_path)
            self.set_image()
            event.accept()
        else:
            event.ignore()

    # 마우스 휠 돌렸을때 이벤트
    def wheelEvent(self, event):
        if self.point:
            if event.angleDelta().y() > 0: self.point_value +=5
            else: self.point_value -=5

            if self.point_value <= 0:
                self.point_value = 0
                return
            elif self.point_value >= 100:
                self.point_value =95
                return

            print(self.point_value)

            if 0 < self.point_value <= 100:
                left = 0
                right = int(self.image_object.shape[0] * (100-self.point_value)/100)
                top = 0
                bottom = int(self.image_object.shape[1] * (100-self.point_value)/100)
                x = self.point[0]
                y = self.point[1]
                # 가로 축 크기 설정
                if x - right//2 <= 0:
                    left = 0
                elif x + right//2 >= self.image_object.shape[0]:
                    left = self.image_object.shape[0] -  right
                    right = self.image_object.shape[0]
                else:
                    left = x - right//2
                    right = x + right//2

                # 세로 축 크기 설정
                if y - bottom//2 <= 0:
                    top = 0
                elif y + bottom//2 >= self.image_object.shape[1]:
                    top = self.image_object.shape[1] - bottom
                    bottom = self.image_object.shape[1]
                else:
                    top = y - bottom//2
                    bottom = y + bottom//2

                img4 = cv2.resize(self.image_object[top:bottom,left:right], dsize=(self.image_object.shape[0], self.image_object.shape[1]), interpolation=cv2.INTER_AREA)
                #dst2 = cv2.resize(img4, dsize=(0, 0), fx=0.3, fy=0.7, interpolation=cv2.INTER_LINEAR)
                image = QImage(img4, self.image_object.shape[0], self.image_object.shape[1], img4.strides[0], QImage.Format_RGB888)
                format_image = QPixmap.fromImage(image)
                self.IMG3.setPixmap(format_image)
            else:
                print("이미지 없음", event.angleDelta().y())



    def set_image(self):
        pixmap1 = QPixmap(self.file_path)
        pixmap1.scaledToWidth(400)
        pixmap1.scaledToHeight(540)
        self.IMG1.setPixmap(pixmap1)
        frame = cv2.cvtColor(self.image, cv2.COLOR_BGR2RGB)
        image = QImage(frame, frame.shape[1], frame.shape[0], frame.strides[0], QImage.Format_RGB888)
        format_image = QPixmap.fromImage(image)
        format_image.scaledToWidth(400)
        self.IMG2 .setPixmap(format_image)

    # 필터 변경
    def Change_filter(self):
        if self.image != np.array([]):
            self.image = cv2.imread(self.file_path)
            if self.Blur_radioButton.isChecked():
                self.image = cv2.blur(self.image, (self.value1+1, self.value1+1))
            elif self.Brightness_radioButton.isChecked():
                hsv = cv2.cvtColor(self.image, cv2.COLOR_BGR2HSV)
                h, s, v = cv2.split(hsv)
                lim = 255 - self.value1
                v[v > lim] = 255
                v[v <= lim] += self.value1
                final_hsv = cv2.merge((h, s, v))
                self.image = cv2.cvtColor(final_hsv, cv2.COLOR_HSV2BGR)
            elif self.Gaussian_radioButton.isChecked():
                kernel1d = cv2.getGaussianKernel(self.value1+1, self.value1+1)
                kernel2d = np.outer(kernel1d, kernel1d.transpose())
                self.image = cv2.filter2D(self.image, -1, kernel2d)
            elif self.Laplacian_radioButton.isChecked():
                self.image = cv2.cvtColor(self.image, cv2.COLOR_BGR2GRAY)
                self.image = cv2.Laplacian(self.image,-1, scale=self.value1)
                self.image = cv2.cvtColor(self.image, cv2.COLOR_GRAY2BGR)
            self.set_image()
        else:
            QMessageBox.warning(self, "이미지 없음", "이미지가 없습니다.")


    def Change_value_Filter(self, value):
        self.value1 = value
        self.Num2_label.setText(str(self.value1))
        self.Change_filter()

    def Change_value_Threshold(self, value):
        if self.image != np.array([]):
            self.value2 = value
            self.Num1_label.setText(str(self.value2))
            img = cv2.cvtColor(self.image, cv2.COLOR_BGR2GRAY)
            ret, img = cv2.threshold(img, self.value2, 255, cv2.THRESH_BINARY_INV)
            self.image_thr = img
            frame = cv2.cvtColor(img, cv2.COLOR_GRAY2RGB)
            image = QImage(frame, 370, frame.shape[0], frame.strides[0], QImage.Format_RGB888)
            format_image = QPixmap.fromImage(image)
            format_image.scaledToWidth(370)
            self.Result_IMG_label.setPixmap(format_image)
        else:
            QMessageBox.warning(self, "이미지 없음", "이미지가 없습니다.")


    # 테이블 아이템 클릭시 객체 찾아서 바운드 박스 그리기기
    def set_box(self, row, column):
        img3 = cv2.imread(self.file_path)
        img3 = cv2.resize(img3, dsize=(600, 600), interpolation=cv2.INTER_AREA)
        bbox = self.bboxs[row]
        cv2.rectangle(img3, (bbox[0], bbox[1]), (bbox[2], bbox[3]),  (0, 255, 0), 2)
        img3 = cv2.cvtColor(img3,cv2.COLOR_BGR2RGB)
        image = QImage(img3, img3.shape[1], img3.shape[0], img3.strides[0], QImage.Format_RGB888)
        self.point_value = 0
        self.image_object = img3
        self.point = self.center_point[row]
        format_image = QPixmap.fromImage(image)
        self.IMG3.setPixmap(format_image)


    # 객체 잡기기
    def Search_Info(self):
        # threhold 이미지가 저장 되어 있는 경우
        if self.image_thr != np.array([]):

            count = 0
            show_img = cv2.imread(self.file_path)
            show_img = cv2.resize(show_img, dsize=(600, 600), interpolation=cv2.INTER_AREA)
            self.tableWidget.clearContents()
            conturs, hierarchy = cv2.findContours(cv2.resize(self.image_thr, dsize=(600, 600), interpolation=cv2.INTER_AREA), cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
            self.tableWidget.setRowCount(len(conturs))
            self.bboxs = []
            self.center_point = []
            for index, cnt in enumerate(conturs):
                try:
                    M = cv2.moments(cnt)
                    cnt_list = np.array([self.image[i[0][0], i[0][1]]  for i in cnt])
                    mx = int(M['m10']/M['m00']) if M['m00'] else 1
                    my = int(M['m01']/M['m00']) if M['m00'] else 1

                    rect = cv2.minAreaRect(cnt)
                    box = cv2.boxPoints(rect)
                    box = np.int0(box)

                    # 한변의  길이는 sqrt((x1 - x2) ^ 2 + (y1 + y2) ^ 2))
                    rh = sqrt((box[3][0] - box[1][0])**2 + (box[3][1] - box[1][1])**2)
                    rw = sqrt((box[2][0] - box[0][0])**2 + (box[2][1] - box[2][1])**2)
                    size = rh*rw/2

                    if size <= 1:
                        continue
                    s_img = self.image_thr.reshape(-1)
                    GD = abs(np.mean(s_img) - np.mean(cnt_list))
                    Area = cv2.contourArea(cnt)
                    Max = np.max(cnt_list)
                    Min = np.min(cnt_list)
                    Mean = np.mean(cnt_list)

                    x, y, w, h = cv2.boundingRect(cnt)
                    self.bboxs.append([x, y, x + w, y + h])
                    self.center_point.append([mx, my])

                    cv2.drawContours(show_img, [box], 0, (0, 0, 255), 2)
                    # 테이블 추가
                    self.tableWidget.setItem(count, 0, QTableWidgetItem(str(count+1)))
                    self.tableWidget.setItem(count, 1, QTableWidgetItem(str(mx)))
                    self.tableWidget.setItem(count, 2, QTableWidgetItem(str(my)))
                    self.tableWidget.setItem(count, 3, QTableWidgetItem("%.2f"%(size)))
                    self.tableWidget.setItem(count, 4, QTableWidgetItem("%.2f"%(GD)))
                    self.tableWidget.setItem(count, 5, QTableWidgetItem(str(Area)))
                    self.tableWidget.setItem(count, 6, QTableWidgetItem("%.2f"%(rh if rh >= rw else rw)))
                    self.tableWidget.setItem(count, 7, QTableWidgetItem("%.2f"%(rh if rh < rw else rw)))
                    self.tableWidget.setItem(count, 8, QTableWidgetItem(str(Min)))
                    self.tableWidget.setItem(count, 9, QTableWidgetItem(str(Max)))
                    self.tableWidget.setItem(count, 10, QTableWidgetItem("%.2f"%Mean))
                    count += 1
                except:
                    continue
            self.tableWidget.setRowCount(count)

            image = QImage(cv2.cvtColor(show_img, cv2.COLOR_RGB2BGR), show_img.shape[0], show_img.shape[1], show_img.strides[0], QImage.Format_RGB888)
            format_image = QPixmap.fromImage(image)
            self.IMG3.setPixmap(format_image)
        else:
            QMessageBox.warning(self, "이미지 없음", "이미지가 없습니다.")

if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    MainWindow = QMainWindow()
    ui = Work()
    ui.show()
    app.exec_()