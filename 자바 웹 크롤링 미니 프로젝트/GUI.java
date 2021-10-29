import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.RowSorter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class GUI extends JFrame implements ActionListener{
	
	JTextField url;
	JButton search;
	JTable table;
	JPanel panel1, panel2;
	TableModel model;
	JTextArea area;
	
	Font f = new Font("����", Font.PLAIN,15);
	
	public GUI() {
		
		setSize(700, 800);
		setTitle("네이버 기사 스크랩");
		setLayout(new FlowLayout());
		url = new JTextField(50);
		search = new JButton("검색");
		search.addActionListener(this);
		panel1 = new JPanel();

		panel1.add(url);
		panel1.add(search);
		add(panel1);
		
		panel2 = new JPanel();
		area = new JTextArea("",40, 60);
		area.setForeground(Color.black);
		area.setFont(f);
		area.setEnabled(true);
		panel2.add(area);
		add(panel2);

		
			
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		area.setText("");
		String geturl = url.getText();
		Document doc = null;
		
		try {
			doc = Jsoup.connect(geturl).get();
		}catch(IOException e1) {
			e1.printStackTrace();
		}
		
		Elements element = doc.select("div.article_info");
		String newsTitle = element.select("h3#articleTitle").text();
				
		area.append("기사 제목: " + newsTitle);
		
		String text = doc.select("div#articleBodyContents._article_body_contents").text();
		int index = text.indexOf("��");
		System.out.println(index);
		
		text = text.substring(0, index);
		index = text.lastIndexOf(".");
		String content_text = text.substring(0, index);
		index = content_text.lastIndexOf(".");
		
		area.append("\n\n"+content_text.substring(0, index+1));
		area.append("\n\n기자: " + text.substring(index+1));
		area.setLineWrap(true); 

	}
	
	public static void main(String[] args) {
		new GUI();
	}
	
	

}
