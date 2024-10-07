DROP SCHEMA IF EXISTS "hanwha-crm" CASCADE;

CREATE SCHEMA IF NOT EXISTS "hanwha-crm" authorization crm_user;
SET SEARCH_PATH TO "hanwha-crm";
SET SCHEMA 'hanwha-crm';


/* DROP 구문 */
DROP TABLE IF EXISTS support__question_user;
DROP TABLE IF EXISTS support__question_coordinator;
DROP TABLE IF EXISTS support__question_comment;

DROP TABLE IF EXISTS support__answer_file;
DROP TABLE IF EXISTS support__question_file;

DROP TABLE IF EXISTS support__answer;
DROP TABLE IF EXISTS support__question;

DROP TABLE IF EXISTS lookup__question_type;

DROP TABLE IF EXISTS support__special_nozzle_answer_product;
DROP TABLE IF EXISTS support__special_nozzle_answer;
DROP TABLE IF EXISTS support__special_nozzle_comment;
DROP TABLE IF EXISTS support__special_nozzle_data;

DROP TABLE IF EXISTS support__special_nozzle;

DROP TABLE IF EXISTS lookup__response_part_type;
DROP TABLE IF EXISTS lookup__special_nozzle_data_type;
DROP TABLE IF EXISTS lookup__nozzle_selection_type;
DROP TABLE IF EXISTS lookup__wing_type;
DROP TABLE IF EXISTS lookup__tip_shape;

DROP TABLE IF EXISTS support__product_certification_email_receiver;
DROP TABLE IF EXISTS support__product_certification_email_log;
DROP TABLE IF EXISTS support__product_certification_model_file;
DROP TABLE IF EXISTS support__product_certification_model;

DROP TABLE IF EXISTS support__product_certification;

DROP TABLE IF EXISTS lookup__certification_valid_period;
DROP TABLE IF EXISTS lookup__calibration_fixture;


DROP TABLE IF EXISTS board__archive_comment_attachment;
DROP TABLE IF EXISTS board__archive_comment;
DROP TABLE IF EXISTS board__archive_detail_log;
DROP TABLE IF EXISTS board__archive_attachment_download_log;
DROP TABLE IF EXISTS board__archive_attachment;
DROP TABLE IF EXISTS board__archive_bookmark;
DROP TABLE IF EXISTS board__archive_model;
DROP TABLE IF EXISTS board__archive;
DROP TABLE IF EXISTS lookup__archive_type;
DROP TABLE IF EXISTS lookup__archive_category;

DROP TABLE IF EXISTS demo__demo_schedule;
DROP TABLE IF EXISTS demo__demo_manager;
DROP TABLE IF EXISTS demo__demo_attachment;
DROP TABLE IF EXISTS demo__demo_evaluation_target_software_version;
DROP TABLE IF EXISTS demo__demo_evaluation_target_software;
DROP TABLE IF EXISTS demo__demo_workgroup_output_item;
DROP TABLE IF EXISTS demo__demo_workgroup_output;
DROP TABLE IF EXISTS demo__demo_workgroup_schedule_item;
DROP TABLE IF EXISTS demo__demo_workgroup_schedule;
DROP TABLE IF EXISTS demo__demo_workgroup;
DROP TABLE IF EXISTS demo__demo_issue;
DROP TABLE IF EXISTS demo__demo_report_attachment;
DROP TABLE IF EXISTS demo__demo_report_email_log;
DROP TABLE IF EXISTS demo__demo_report;
DROP TABLE IF EXISTS demo__demo_report_receiver;
DROP TABLE IF EXISTS demo__demo_pcb_item;
DROP TABLE IF EXISTS demo__demo_pcb;
DROP TABLE IF EXISTS demo__demo_line_item;
DROP TABLE IF EXISTS demo__demo_line;
DROP TABLE IF EXISTS demo__demo_evaluation_target;
DROP TABLE IF EXISTS demo__demo;
DROP TABLE IF EXISTS lookup__demo_evaluation_target_software_classification;
DROP TABLE IF EXISTS lookup__demo_status;
DROP TABLE IF EXISTS lookup__demo_pcb_item_type;
DROP TABLE IF EXISTS lookup__demo_evaluation_target_type;
DROP TABLE IF EXISTS lookup__demo_workgroup_schedule_reason_type;
DROP TABLE IF EXISTS lookup__demo_issue_classification;
DROP TABLE IF EXISTS lookup__demo_issue_improvement_type;

DROP TABLE IF EXISTS board__comment_attachment;
DROP TABLE IF EXISTS board__comment;
DROP TABLE IF EXISTS board__notice_attachment;
DROP TABLE IF EXISTS board__notice_model;
DROP TABLE IF EXISTS board__notice_detail_log;
DROP TABLE IF EXISTS board__notice;
DROP TABLE IF EXISTS board__notice_category;

DROP TABLE IF EXISTS asset__asset_prevention_log;

DROP TABLE IF EXISTS aftermarket__quote_record_product;
DROP TABLE IF EXISTS aftermarket__quote_record;
DROP TABLE IF EXISTS aftermarket__performance_attachment;
DROP TABLE IF EXISTS aftermarket__performance_sales_order;
DROP TABLE IF EXISTS aftermarket__performance;
DROP TABLE IF EXISTS aftermarket__performance_type;
DROP TABLE IF EXISTS aftermarket__performance_currency;

DROP TABLE IF EXISTS education__online_complete_lesson;
DROP TABLE IF EXISTS education__online_course_applicant;
DROP TABLE IF EXISTS education__online_lesson;
DROP TABLE IF EXISTS education__online_curriculum;
DROP TABLE IF EXISTS education__online_course_bookmark;
DROP TABLE IF EXISTS education__online_course_attachment;
DROP TABLE IF EXISTS education__online_course_manager;
DROP TABLE IF EXISTS education__online_course;
DROP TABLE IF EXISTS education__online_class;
DROP TABLE IF EXISTS education__offline_class_audience;
DROP TABLE IF EXISTS education__offline_class;
DROP TABLE IF EXISTS education__offline_classroom_manager;
DROP TABLE IF EXISTS education__offline_classroom;
DROP TABLE IF EXISTS education__offline_classroom_city;

DROP TABLE IF EXISTS asset__asset_bs_log;

DROP TABLE IF EXISTS prevention__bs_cost_item;
DROP TABLE IF EXISTS prevention__bs_production_species;

DROP TABLE IF EXISTS prevention__bs_client_applied_species_type;
DROP TABLE IF EXISTS prevention__bs_industry_type;

DROP TABLE IF EXISTS prevention__bs_am;
DROP TABLE IF EXISTS prevention__bs_job_description;
DROP TABLE IF EXISTS prevention__bs_client_comment;

DROP TABLE IF EXISTS prevention__bs_client_file;

DROP TABLE IF EXISTS prevention__bs_asset;

DROP TABLE IF EXISTS prevention__bs_administrator;
DROP TABLE IF EXISTS prevention__bs_client;

DROP TABLE IF EXISTS prevention__bs_file;
DROP TABLE IF EXISTS prevention__bs_user;

DROP TABLE IF EXISTS prevention__bs;

DROP TABLE IF EXISTS prevention__retrofit_file;
DROP TABLE IF EXISTS prevention__retrofit_cost_item;

DROP TABLE IF EXISTS prevention__retrofit_asset;
DROP TABLE IF EXISTS prevention__retrofit_coordinator;
DROP TABLE IF EXISTS prevention__retrofit_processing;

DROP TABLE IF EXISTS prevention__retrofit_user;

DROP TABLE IF EXISTS prevention__retrofit;

DROP TABLE IF EXISTS prevention__prevention;

DROP TABLE IF EXISTS lookup__prevention_status;
DROP TABLE IF EXISTS lookup__bs_group;
DROP TABLE IF EXISTS lookup__bs_client_file_type;
DROP TABLE IF EXISTS lookup__prevention_type;

DROP TABLE IF EXISTS store__store_order_item;
DROP TABLE IF EXISTS store__store_order_comment;
DROP TABLE IF EXISTS store__store_order;
DROP TABLE IF EXISTS store__store_wish;
DROP TABLE IF EXISTS domain__used_parts;

DROP TABLE IF EXISTS store__drawing_coordinate_product;
DROP TABLE IF EXISTS store__drawing_coordinate;
DROP TABLE IF EXISTS store__drawing_number;
DROP TABLE IF EXISTS store__trm_model;
DROP TABLE IF EXISTS store__trm;
DROP TABLE IF EXISTS store__trm_version;

DROP TABLE IF EXISTS store__trm_intro;
DROP TABLE IF EXISTS store__trm_intro_setting;

DROP TABLE IF EXISTS voc__email_receiver;

DROP TABLE IF EXISTS voc__email_template;
DROP TABLE IF EXISTS voc__email_log;

DROP TABLE IF EXISTS voc__approval;
DROP TABLE IF EXISTS voc__measure;
DROP TABLE IF EXISTS voc__support;

DROP TABLE IF EXISTS voc__voc_user;

DROP TABLE IF EXISTS voc__voc;

DROP TABLE IF EXISTS voc__request_detail_type;
DROP TABLE IF EXISTS voc__request_type;
DROP TABLE IF EXISTS voc__measure_type;

DROP TABLE IF EXISTS lookup__voc_status;
DROP TABLE IF EXISTS lookup__voc_grade;

DROP TABLE IF EXISTS content__terms, content__terms_category;

DROP TABLE IF EXISTS service__invoice_item;
DROP TABLE IF EXISTS service__type_change_log_attachment;
DROP TABLE IF EXISTS service__service_type_change_log;
DROP TABLE IF EXISTS service__engineer_allocator;
DROP TABLE IF EXISTS service__user_bookmark;
DROP TABLE IF EXISTS service__order_attachment;

DROP TABLE IF EXISTS setup__project_administrator;

DROP TABLE IF EXISTS setup__file;
DROP TABLE IF EXISTS lookup__project_file_type;

DROP TABLE IF EXISTS setup__pre_meeting_engineer;
DROP TABLE IF EXISTS setup__pre_meeting;

DROP TABLE IF EXISTS worktime__worktime_file;
DROP TABLE IF EXISTS worktime__worktime_item;
DROP TABLE IF EXISTS lookup__worktime_item_type;
DROP TABLE IF EXISTS worktime__worktime;
DROP TABLE IF EXISTS lookup__worktime_type;

DROP TABLE IF EXISTS user__schedule;
DROP TABLE IF EXISTS lookup__schedule_type;

DROP TABLE IF EXISTS setup__upgrade_asset;
DROP TABLE IF EXISTS setup__upgrade;
DROP TABLE IF EXISTS lookup__upgrade_location_type;

DROP TABLE IF EXISTS setup__test_check_list;
DROP TABLE IF EXISTS setup__test_engineer;
DROP TABLE IF EXISTS setup__test;

DROP TABLE IF EXISTS setup__project_product;

DROP TABLE IF EXISTS setup__shipping_item;
DROP TABLE IF EXISTS setup__shipping;
DROP TABLE IF EXISTS lookup__project_shipping_type;
DROP TABLE IF EXISTS setup__shipping_group;


DROP TABLE IF EXISTS setup__comment;
DROP TABLE IF EXISTS setup__project_user;
DROP TABLE IF EXISTS setup__report;
DROP TABLE IF EXISTS lookup__report_print_page_size;


DROP TABLE IF EXISTS setup__project;
DROP TABLE IF EXISTS lookup__project_status;

DROP TABLE IF EXISTS asset__asset_warranty_period_attachment;
DROP TABLE IF EXISTS asset__asset_warranty_period;
DROP TABLE IF EXISTS asset__asset_transfer_log;
DROP TABLE IF EXISTS asset__asset_information;
DROP TABLE IF EXISTS asset__asset;

DROP TABLE IF EXISTS catalog__product_model_change_log;
DROP TABLE IF EXISTS catalog__product_plant;
DROP TABLE IF EXISTS catalog__product_sale_on_price;
DROP TABLE IF EXISTS catalog__product_supplier_product;
DROP TABLE IF EXISTS catalog__product_sales_price;
DROP TABLE IF EXISTS catalog__product_supplier;
DROP TABLE IF EXISTS catalog__product_standard_work_hour;
DROP TABLE IF EXISTS catalog__product_image;
DROP TABLE IF EXISTS catalog__product_attachment;
DROP TABLE IF EXISTS catalog__product_selling_price_change_log;
DROP TABLE IF EXISTS catalog__product_selling_price;
DROP TABLE IF EXISTS catalog__product_stock;
DROP TABLE IF EXISTS catalog__product_msds_attachment;
DROP TABLE IF EXISTS catalog__product;

DROP TABLE IF EXISTS catalog__chipmounter_head;

DROP TABLE IF EXISTS catalog__model_option_image;
DROP TABLE IF EXISTS catalog__model_option_value;
DROP TABLE IF EXISTS catalog__model_option;
DROP TABLE IF EXISTS catalog__model_image;
DROP TABLE IF EXISTS catalog__model;

DROP TABLE IF EXISTS catalog__product_substitute_item;
DROP TABLE IF EXISTS catalog__product_substitute_revision;
DROP TABLE IF EXISTS catalog__product_substitute;

DROP TABLE IF EXISTS catalog__part_change_log_model;
DROP TABLE IF EXISTS catalog__part_change_log_attachment;
DROP TABLE IF EXISTS catalog__part_change_log_before_product;
DROP TABLE IF EXISTS catalog__part_change_log_after_product;
DROP TABLE IF EXISTS catalog__part_change_log;

DROP TABLE IF EXISTS company__store_selling_manager;
DROP TABLE IF EXISTS company__setup_manager;
DROP TABLE IF EXISTS company__store_setting;
DROP TABLE IF EXISTS company__store_selling_setting;
DROP TABLE IF EXISTS company__setup_setting;

DROP TABLE IF EXISTS user__activity_log;
DROP TABLE IF EXISTS user__apply_permission_company_permission;
DROP TABLE IF EXISTS user__apply_permission;

DROP TABLE IF EXISTS user__password_change_log;
DROP TABLE IF EXISTS user__request_password_change;
DROP TABLE IF EXISTS user__career;
DROP TABLE IF EXISTS user__user_center_group;
DROP TABLE IF EXISTS user__user_company_permission;
DROP TABLE IF EXISTS user__user;

DROP TABLE IF EXISTS role__group_permission_center;

DROP TABLE IF EXISTS company__apply_permission_company_permission;
DROP TABLE IF EXISTS company__apply_permission;
DROP TABLE IF EXISTS role__company_permission;
DROP TABLE IF EXISTS company__department;
DROP TABLE IF EXISTS company__company_attachment;
DROP TABLE IF EXISTS company__company_address;
DROP TABLE IF EXISTS company__division_group;
DROP TABLE IF EXISTS company__company;
DROP TABLE IF EXISTS company__business_info;



DROP TABLE IF EXISTS sales__sales_order_item;
DROP TABLE IF EXISTS sales__sales_order_item_group;
DROP TABLE IF EXISTS sales__sales_order;
DROP TABLE IF EXISTS sales__sales_order_delivery_history;
DROP TABLE IF EXISTS sales__sales_order_delivery;

DROP TABLE IF EXISTS system__continent_i18n, system__country_i18n, system__currency_i18n;
DROP TABLE IF EXISTS system__city_i18n, system__language_i18n, system__state_or_province_i18n;
DROP TABLE IF EXISTS system__country_timezone;

DROP TABLE IF EXISTS system__address;
DROP TABLE IF EXISTS system__city;
DROP TABLE IF EXISTS system__state_or_province;
DROP TABLE IF EXISTS system__locale;
DROP TABLE IF EXISTS system__language;
DROP TABLE IF EXISTS system__timezone;
DROP TABLE IF EXISTS system__country;
DROP TABLE IF EXISTS system__currency;
DROP TABLE IF EXISTS system__continent;
DROP TABLE IF EXISTS system__file;
DROP TABLE IF EXISTS system__service_action;
DROP TABLE IF EXISTS system__service_action_type;

DROP TABLE IF EXISTS system__platform;

DROP TABLE IF EXISTS store__trm_intro_setting;
DROP TABLE IF EXISTS store__trm_intro;

DROP TABLE IF EXISTS role__permission;

-- lookup TABLE
DROP TABLE IF EXISTS lookup__content_terms_category_type;
DROP TABLE IF EXISTS lookup__company_company_type;
DROP TABLE IF EXISTS lookup__region;
DROP TABLE IF EXISTS lookup__user_apply_permission_status;
DROP TABLE IF EXISTS lookup__company_client_type;
DROP TABLE IF EXISTS lookup__catalog__model_type;
DROP TABLE IF EXISTS lookup__catalog_model_image_type;

DROP TABLE IF EXISTS lookup__company_apply_permission_status;

DROP TABLE IF EXISTS lookup__part_change_log_type;
DROP TABLE IF EXISTS lookup__eco_grade;
DROP TABLE IF EXISTS lookup__part_change_log_action_type;

DROP TABLE IF EXISTS lookup__system_register_channel;
DROP TABLE IF EXISTS lookup__product_category;
DROP TABLE IF EXISTS lookup__product_sa;
DROP TABLE IF EXISTS lookup__product_hierarchy;
DROP TABLE IF EXISTS  lookup__product_model_group;
DROP TABLE IF EXISTS lookup__asset_information_register_type;
DROP TABLE IF EXISTS lookup__asset_warranty_period_status;
DROP TABLE IF EXISTS lookup__asset_warranty_period_status;

DROP TABLE IF EXISTS lookup__user_activity_log_type;
DROP TABLE IF EXISTS lookup__user_activity_log_target_type;

DROP TABLE IF EXISTS lookup__price_list;
DROP TABLE IF EXISTS lookup__sales_organization;
DROP TABLE IF EXISTS lookup__profit_center_plant;
DROP TABLE IF EXISTS lookup__profit_center;
DROP TABLE IF EXISTS lookup__plant;
DROP TABLE IF EXISTS lookup__sales_order_type;
DROP TABLE IF EXISTS lookup__payment_type;
DROP TABLE IF EXISTS lookup__customer_group;

DROP TABLE IF EXISTS lookup__distribution_channel;
DROP TABLE IF EXISTS lookup__division;
DROP TABLE IF EXISTS lookup__sales_group;
DROP TABLE IF EXISTS lookup__sales_office;
DROP TABLE IF EXISTS lookup__sales_district;
DROP TABLE IF EXISTS lookup__storage_location;
DROP TABLE IF EXISTS lookup__shipping_point;

DROP TABLE IF EXISTS lookup__visit_date_type;
DROP TABLE IF EXISTS lookup__service_check_status;
DROP TABLE IF EXISTS lookup__service_type_change_status;
DROP TABLE IF EXISTS lookup__user_notification_target_type;
DROP TABLE IF EXISTS lookup__user_notification_type;
DROP TABLE IF EXISTS lookup__service_check_status;
DROP TABLE IF EXISTS lookup__service_action_type;
DROP TABLE IF EXISTS lookup__document_status;
DROP TABLE IF EXISTS lookup__store_order_status;
DROP TABLE IF EXISTS lookup__store_order_type;

DROP TABLE IF EXISTS lookup__offline_class_open_status;
DROP TABLE IF EXISTS lookup__offline_audience_status;

-- Batch DROP
-- -------------------------------------------------------
--  BATCH (https://github.com/spring-projects/spring-batch/blob/main/spring-batch-core/src/main/resources/org/springframework/batch/core/schema-postgresql.sql)
--  위에 값은 migration 제대로 안된다.
--  관련링크: https://velog.io/@gillog/Batch-Application-생성하기
-- -------------------------------------------------------
DROP TABLE IF EXISTS BATCH_JOB_EXECUTION_CONTEXT;
DROP TABLE IF EXISTS BATCH_STEP_EXECUTION_CONTEXT;
DROP TABLE IF EXISTS BATCH_STEP_EXECUTION;
DROP TABLE IF EXISTS BATCH_JOB_EXECUTION_PARAMS;
DROP TABLE IF EXISTS BATCH_JOB_EXECUTION;
DROP TABLE IF EXISTS BATCH_JOB_INSTANCE;
DROP SEQUENCE IF EXISTS BATCH_STEP_EXECUTION_SEQ;
DROP SEQUENCE IF EXISTS BATCH_JOB_EXECUTION_SEQ;
DROP SEQUENCE IF EXISTS BATCH_JOB_SEQ;


/* DROP 구문 [E]*/


/* CREATE 구문 */

/* ==============================================================================================================
                                                DOMAIN : role
================================================================================================================= */
CREATE TABLE role__permission
(
    permission_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,    -- permission PK
    name          VARCHAR(32) NOT NULL,

    PRIMARY KEY (permission_id)
); -- 플렛폼 전체 권한

CREATE TABLE role__company_permission
(
    company_permission_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- company_permission PK
    permission_id         BIGINT                       NOT NULL, -- permission FK
    company_id            BIGINT                       NOT NULL, -- company FK
    created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    deleted_datetime      TIMESTAMPTZ(6),                        -- 삭제일

    PRIMARY KEY (company_permission_id),
    UNIQUE (permission_id, company_id)
); -- company에 부여된 permission들


/* ==============================================================================================================
                                                DOMAIN : company
================================================================================================================= */

CREATE TABLE lookup__company_company_type
(
    company_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- company_type PK
    name              VARCHAR(32) NOT NULL, -- 이름
    -- HEAD, CORPORATE, AGENCY, SUB-AGENCY, CLIENT
    -- 본사, 법인, 대리점, 대리점 거점, 고객사
    label             VARCHAR(16),          -- label

    PRIMARY KEY (company_type_id)
); -- 회사 유형


CREATE TABLE company__business_info
(
    business_info_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL   NOT NULL, -- company_group PK
    business_number  VARCHAR(16) NOT NULL, -- 사업자 등록번호

    PRIMARY KEY (business_info_id)
); -- company group

CREATE TABLE lookup__company_client_type
(
    client_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL NOT NULL, -- 고객유형 PK
    name           VARCHAR(16) NOT NULL, -- 고객유형
    label          VARCHAR(32),          -- value

    PRIMARY KEY (client_type_id)
); -- 고객 유형 lookup

CREATE TABLE company__company
(
    company_id                      BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- company PK
    origin_key                      VARCHAR(64),                                      -- crm에서 넣은 데이터가 아닌 다른곳에 가져왔을때 가져온 데이터의 PK
    system_code                     VARCHAR(64)                   NOT NULL,           -- system_code
    parent_company_id               BIGINT,                                           -- 상위 company FK
    company_type_id                 SMALLINT                      NOT NULL,           -- 회사 유형 FK
    group_code                      VARCHAR(64)                   NOT NULL,           -- 사업자 번호가 다른데 같은 회사인경우 같은 group_code를 가진다.
    is_grouped                      BOOLEAN         DEFAULT FALSE NOT NULL,           --
    business_info_id                BIGINT,                                           -- 사업자 정보

    country_id                      SMALLINT                      NOT NULL,           -- 국가 FK
    name_local                      VARCHAR(64)                   NOT NULL,           -- 이름(원문)
    name_en                         VARCHAR(64),                                      -- 이름(영문)

    owner                           VARCHAR(64),                                      -- 대표자
    phone_country_id                SMALLINT,                                         -- 전화 국가
    pii_phone_number                VARCHAR(2048),                                    -- 대표전화 pii
    pii_phone_number_lookup         VARCHAR(2048),                                    -- 대표전화 HMAC값 HMAC-SHA512
    fax_country_id                  SMALLINT,                                         -- fax 국가
    fax_number                      VARCHAR(32),                                      -- 대표 팩스
    pii_email_address               VARCHAR(2048),                                    -- 이메일
    pii_email_address_lookup        VARCHAR(2048),                                    -- 이메일 HMAC값 HMAC-SHA512

    business_section                VARCHAR(32),                                      -- 업종
    business_category               VARCHAR(32),                                      -- 업태

    purchase_level_id               SMALLINT,                                         -- 구매가 레벨
    selling_level_id                SMALLINT,                                         -- 판매가 채널
    selling_level_from_interface_id SMALLINT,                                         -- MDG 판매가 레벨

    registerer_id                   BIGINT,                                           -- 등록자 FK
    registerer                      VARCHAR(32),                                      -- 등록자
    updater_id                      BIGINT,                                           -- 변경자 FK
    updater                         VARCHAR(32),                                      -- 변경자

    tax_number1                     VARCHAR(32),                                      -- 세금번호 1
    tax_number2                     VARCHAR(32),                                      -- 세금번호 2
    tax_number3                     VARCHAR(32),                                      -- 세금번호 3
    tax_number4                     VARCHAR(32),                                      -- 세금번호 4

    client_type_id                  SMALLINT,                                         -- 고객유형 (고객사일 경우에 사용된다)
    sales_organization_id           SMALLINT,                                         -- 영업조직 또는 사업부

    is_active                       BOOLEAN        DEFAULT TRUE   NOT NULL,           -- 활성화/비활성화
    register_channel_id             SMALLINT                      NOT NULL,           -- 회사 등록채널

    created_datetime                TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,           -- 생성일
    updated_datetime                TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,           -- 수정일
    deleted_datetime                TIMESTAMPTZ(6),                                   -- 삭제일

    iv_data_encryption_key          VARCHAR(2048)                 NOT NULL,           -- IV값
    encrypted_data_encryption_key   VARCHAR(2048)                 NOT NULL,           -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

    depth                           SMALLINT                      NOT NULL,           -- 회사 계층 DEPTH
    map                             VARCHAR(128)                  NOT NULL,           -- 회사 계층 map (1-A-A1 의 구조일 때 (1#A#A1)의 형태

    material_request_center_id      BIGINT,                                           -- 자재 신청 센터
    storage_location                VARCHAR(8),                                       -- storage location String 값

    credit_from_interface NUMERIC(12, 2), -- 여신(SAP)
    credit                NUMERIC(12, 2), -- 여신(CRM)

    unpaid_receivables       NUMERIC(12, 2), -- 누적미수채권
    unpaid_receivables_limit NUMERIC(12, 2), -- 누적미수채권한도

    PRIMARY KEY (company_id),
    UNIQUE (system_code)
); -- 회사

CREATE TABLE company__division_group
(
    division_group_id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 센터 사업부 PK

    company_id BIGINT NOT NULL, -- company FK

    sales_organization_id SMALLINT NOT NULL, -- sales organization FK
    division_id SMALLINT NOT NULL, -- division FK

    price_list_id SMALLINT NOT NULL, -- price list FK
    selling_level_id SMALLINT, -- 판매가 레벨 FK
    purchase_level_id SMALLINT, -- 구매가 레벨 FK

    register_channel_id SMALLINT NOT NULL, -- 등록 채널 FK

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 등록일
    registerer_id BIGINT, -- 등록자 FK
    registerer VARCHAR(32), -- 등록자
    updater_id BIGINT, -- 변경자 FK
    updated_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 변경자

    PRIMARY KEY (division_group_id)
); -- 센터 - 사업부

CREATE TABLE company__center_client
(
    center_client_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    center_id     BIGINT      NOT NULL,  -- 센터 FK
    client_id      BIGINT      NOT NULL,  -- 고객사 FK

    PRIMARY KEY (center_client_id),
    UNIQUE (center_id, client_id)
); -- 센터 - 고객사 다대다 테이블

CREATE TABLE company__client_manager
(
    client_manager_id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 고객사 담당자 PK
    client_id                       BIGINT                        NOT NULL,  -- 고객사 FK

    system_code                     VARCHAR(64)                   NOT NULL,  -- system_code
    name                            VARCHAR(32)                   NOT NULL,  -- 이름
    position                        VARCHAR(32),                             -- 직급

    phone_country_id                SMALLINT                      NOT NULL,  -- 전화 국가
    pii_phone_number                VARCHAR(2048)                 NOT NULL,  -- 전화번호 pii
    pii_phone_number_lookup         VARCHAR(2048)                 NOT NULL,  -- 전화번호 HMAC값 HMAC-SHA512

    pii_email_address               VARCHAR(2048),                           -- 이메일
    pii_email_address_lookup        VARCHAR(2048),                           -- 이메일 HMAC값 HMAC-SHA512

    iv_data_encryption_key          VARCHAR(2048)                 NOT NULL,  -- IV값
    encrypted_data_encryption_key   VARCHAR(2048)                 NOT NULL,  -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

    registerer_id                   BIGINT,  -- 등록자

    created_datetime                TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,  -- 생성일
    updated_datetime                TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,  -- 수정일
    deleted_datetime                TIMESTAMPTZ(6),                          -- 삭제일

    PRIMARY KEY (client_manager_id),
    UNIQUE(system_code)
); -- 고객사 담당자

CREATE TABLE company__company_address
(
    company_address_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- address PK
    company_id     BIGINT      NOT NULL,  -- 회사 FK
    name           VARCHAR(64) NOT NULL,  -- 부서 이름
    address_id      BIGINT     NOT NULL,  -- 주소 FK
    "order"           SMALLINT,
    is_basic        BOOLEAN DEFAULT FALSE NOT NULL, -- 기본 여부

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 생성일
    updated_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

    registerer_id   BIGINT, -- 등록자 PK
    registerer      VARCHAR(32), -- 등록자 이름
    updater_id      BIGINT, -- 변경자 PK
    updater         VARCHAR(32), -- 변경자 이름

    register_channel_id SMALLINT                    NOT NULL, -- 등록 채널 FK

    PRIMARY KEY (company_address_id)
); -- 회사 주소

CREATE TABLE company__company_attachment
(
    company_attachment_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- address PK
    company_id    BIGINT      NOT NULL,  -- 회사 FK
    file_id       BIGINT     NOT NULL,  -- 파일 FK
    "order"         SMALLINT,
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 생성일
    registerer_id BIGINT, -- 등록자 PK
    registerer    VARCHAR(32), -- 등록자 이름

    PRIMARY KEY (company_attachment_id)
); -- 회사 주소

CREATE TABLE company__department
(
    department_id  BIGINT GENERATED BY DEFAULT AS IDENTITY   NOT NULL,  -- department PK
    system_code    VARCHAR(64) NOT NULL,  -- systemCode
    company_id     BIGINT      NOT NULL,  -- 회사 FK
    name           VARCHAR(64) NOT NULL,  -- 부서 이름
    description    TEXT,                  -- 설명
    registerer_id  BIGINT,                -- 등록자 PK
    registerer     VARCHAR(32),           -- 등록자 이름
    updater_id     BIGINT,                -- 변경자 PK
    updater        VARCHAR(32),           -- 변경자 이름
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,              -- 생성일
    updated_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL,              -- 수정일

    PRIMARY KEY (department_id)
); -- 회사의 부서

CREATE TABLE lookup__company_apply_permission_status
(
    apply_permission_status_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 권한신청 상태 PK
    name                       VARCHAR(16) NOT NULL, -- 상태
    -- PENDING, CANCEL, RETURN, APPROVAL
    -- 승인대기, 취소, 반려, 승인

    label                      VARCHAR(16),          -- lable
    PRIMARY KEY (apply_permission_status_id)
); -- 권한 변경 신청 상태

CREATE TABLE company__apply_permission
(
    apply_permission_id        BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 권한 신청 PK
    apply_permission_status_id SMALLINT NOT NULL,                      -- 권한신청 상태 FK
    resign_reason              VARCHAR(44),                            -- 반려사유
    company_id                 BIGINT NOT NULL,                        -- 회사 FK
    issuer_id                  BIGINT NOT NULL,                        -- 신청자 FK
    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 신청날짜

    PRIMARY KEY (apply_permission_id)
); -- 권한 변경 신청 이력

CREATE TABLE company__apply_permission_company_permission
(
    apply_permission_id   BIGINT  NOT NULL, -- 권한변경신청 PK FK
    company_permission_id BIGINT  NOT NULL, -- 회사에 부여된 permission PK FK
    is_new                BOOLEAN NOT NULL, -- true 일경우 새로 추가되는것 false 일 경우 지워지는 것

    PRIMARY KEY (apply_permission_id, company_permission_id)
); -- 권한 변경 신청 내역

CREATE TABLE company__cost_item
(
    cost_item_id      BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 센터 비목 PK
    company_id        BIGINT                        NOT NULL, -- company FK
    name              VARCHAR(32)                   NOT NULL, -- 비목 이름
    is_fix            BOOLEAN       DEFAULT  TRUE   NOT NULL, -- 비용 고정 유무 FALSE 일경우 시간당임
    price             NUMERIC(12,2)                 NOT NULL, -- 비용
    is_active         BOOLEAN       DEFAULT  TRUE   NOT NULL, -- 사용유무

    registerer_id     BIGINT,                                 -- 등록자 PK

    created_datetime  TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 생성일
    updated_datetime  TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일
    deleted_datetime  TIMESTAMPTZ(6),                         -- 삭제일

    PRIMARY KEY (cost_item_id)
); -- 센터 비목

CREATE TABLE company__store_setting
(
    store_setting_id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 스토어 일반 주문(법인) PK
    company_id 					           BIGINT NOT NULL, -- company FK

   	po_code                        VARCHAR(16),  -- 부호
   	payment_terms                  VARCHAR(64),  -- Payment Terms
	  packing                        VARCHAR(64),  -- packing
	  inspection                     VARCHAR(64),  -- inspection
	  insurance                      VARCHAR(64),  -- insurance
	  port_of_entry                  VARCHAR(64),  -- port of entry
	  port_of_shipment               VARCHAR(64),  -- port of shipment
	  other_terms_condition          VARCHAR(128), -- other terms and condition
	  collecting_bank                VARCHAR(256), -- collecting bank

    PRIMARY KEY (store_setting_id)
); -- 업무메뉴 설정 : 스토어 일반 주문(법인)


CREATE TABLE company__store_selling_setting
(
    store_selling_setting_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 스토어 판매 PK
    company_id                BIGINT NOT NULL, -- company FK

    PRIMARY KEY (store_selling_setting_id)
); -- 업무메뉴 설정 : 스토어 판매


CREATE TABLE company__setup_setting
(
    setup_setting_id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 설치시운전 PK
    company_id 					           BIGINT NOT NULL, -- company FK

 	  is_summary						         BOOLEAN DEFAULT TRUE NOT NULL,	-- 개요 (무조건 TRUE, 변경불가)
    is_pre_meeting					       BOOLEAN DEFAULT FALSE,		      --	프리미팅 여부
    is_facility_completion			   BOOLEAN DEFAULT FALSE,		      -- 설치환경 체크
    is_upgrade						         BOOLEAN DEFAULT FALSE,		      -- 업그레이드
    is_setup_setting				       BOOLEAN DEFAULT TRUE NOT NULL,	-- 설치시운전 (무조건 TRUE, 변경불가)
    use_select_sales_order			   BOOLEAN DEFAULT FALSE,				  -- 판매 주문으로 선택 활성화

    PRIMARY KEY (setup_setting_id)
); -- 업무메뉴 설정 : 설치시운전


CREATE TABLE company__store_selling_manager
(
    store_selling_manager_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 스토어 판매 담당자 PK
    store_selling_setting_id	BIGINT NOT NULL, 								  -- 업무메뉴 설정 : 스토어 판매 FK
	  user_id								    BIGINT NOT NULL, 								  -- 사용자 FK

    PRIMARY KEY (store_selling_manager_id)
); -- 업무메뉴 설정 : 스토어 판매 담당자


CREATE TABLE company__setup_manager
(
    setup_manager_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 설치시운전 담당자 PK
    setup_setting_id	BIGINT NOT NULL, 								  -- 업무메뉴 설정 : 설치시운전 FK
	  user_id						BIGINT NOT NULL, 								  -- 사용자 FK

    PRIMARY KEY (setup_manager_id)
); -- 업무메뉴 설정 : 설치시운전 담당자

/* ==============================================================================================================
                                                DOMAIN : user
================================================================================================================= */
CREATE TABLE user__user
(
    -- postgre는 COMMENT를 명령문으로 지원 따라서 주석으로 할지 명령문으로 할지 선택해야 함
    user_id                         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- user PK
    system_code                     VARCHAR(64)                 NOT NULL,  -- SystemCode
    company_id                      BIGINT,                                -- company FK
    user_key                        VARCHAR(64),                           -- circleUserKey
    is_circle_user                  BOOLEAN       DEFAULT FALSE NOT NULL,  -- cirCleUser 유무
    slo_user_id                     VARCHAR(64),                           -- cirCleUserId
    approval_document_system_code   VARCHAR(64),                           -- 계정등록 결제 systemCode

    non_member                      BOOLEAN       DEFAULT FALSE NOT NULL,  -- 비회원 유무(비회원 : true)

    password                        VARCHAR(2048),                         -- 비밀번호
    department_id                   BIGINT,                                -- 부서 FK
    employ_num                      VARCHAR(64),                           -- 서클 회원의 사원 번호

    name_local                      VARCHAR(32),                           -- 이름(원문)
    name_en                         VARCHAR(64)                NOT NULL,   -- 이름(영문)
    pii_email_address               VARCHAR(2048),                         -- 이메일, 최소값은 21, 최대값은 270
    pii_email_address_lookup        VARCHAR(2048),                         -- 이메일 HMAC값 HMAC-SHA512
    email_verify_datetime           TIMESTAMPTZ(6),                        -- 이메일 인증 완료일

    phone_country_id                SMALLINT,                              -- 핸드폰 번호 국가
    pii_phone_number                VARCHAR(2048),                         -- 핸드폰 번호
    pii_phone_number_lookup         VARCHAR(2048),                         -- 핸드폰 번호 HMAC값 HMAC-SHA512
    phone_verify_datetime           TIMESTAMPTZ(6),                        -- 핸드폰 번호 인증 완료일

    position                        VARCHAR(32),                           -- 직급
    job_title                       VARCHAR(32),                           -- 직책
    duties                          VARCHAR(32),                           -- 담당업무
    circle_department_id            VARCHAR(32),                           -- 서클에서 받아온 dept id
    circle_department_code            VARCHAR(32),                           -- 서클에서 받아온 dept code
    circle_department_name            VARCHAR(32),                           -- 서클에서 받아온 dept name

    resign_reason                   VARCHAR(64),                           -- 승인거절 사유
    dormant_datetime                TIMESTAMPTZ(6),                        -- 계정 휴면 날짜
    password_change_datetime        TIMESTAMPTZ(6),                        -- 비밀번호를 변경한 날짜
    last_login_datetime             TIMESTAMPTZ(6),                        -- 마지막 로그인 날짜

    un_signed_datetime              TIMESTAMPTZ(6),                        -- 결재 반려일(서클 사용자 일경우에만 데이터를 넣는다.)
    signed_datetime                 TIMESTAMPTZ(6),                        -- 결재 승인일(서클 사용자 일경우에만 데이터를 넣는다.)
    confirmed_datetime              TIMESTAMPTZ(6),                        -- 계정등록 승인일

    employment_datetime             TIMESTAMPTZ(6),                        -- 입사일

    created_datetime                TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    updated_datetime                TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 수정일
    deleted_datetime                TIMESTAMPTZ(6),                        -- 삭제일

    profile_image_id                BIGINT,                                -- 프로필 이미지 FK
    registerer_id                   BIGINT,                                -- 해당 유저 등록자(서클 유저의 경우 자기자신) 1번 유저 혹은 첫 seed 유저는 등록자를 가질 수 없어서 nullable 로 놨지만 코드 상으로는 notNull이 되어야 한다.
    updater_id                      BIGINT,                                -- 유저 정보 마지막으로 수정한사람

    iv_data_encryption_key          VARCHAR(2048)  NOT NULL,               -- IV값
    encrypted_data_encryption_key   VARCHAR(2048)  NOT NULL,               -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

    PRIMARY KEY (user_id)
); -- User base
COMMENT ON TABLE user__user IS 'User base';
COMMENT ON COLUMN user__user.user_id IS '사용자 PK';
COMMENT ON COLUMN user__user.password IS '비밀번호';
COMMENT ON COLUMN user__user.pii_email_address IS '이메일, 최소값은 21, 최대값은 270(EMAIL 254자)글자 이다, 아이디로 사용';
COMMENT ON COLUMN user__user.pii_email_address_lookup IS '이메일 HMAC값 HMAC-SHA512이다.';
COMMENT ON COLUMN user__user.dormant_datetime IS '휴면 날짜';
COMMENT ON COLUMN user__user.password_change_datetime IS '비밀번호를 변경해야 하는 날짜 (비밀번호 변경 날짜 + 90일)';
COMMENT ON COLUMN user__user.created_datetime IS '생성일';
COMMENT ON COLUMN user__user.updated_datetime IS '수정일';
COMMENT ON COLUMN user__user.deleted_datetime IS '탈퇴일';
COMMENT ON COLUMN user__user.iv_data_encryption_key IS 'IV값';
COMMENT ON COLUMN user__user.encrypted_data_encryption_key IS '암호화된 DEK값, 184 고정이다. AES-GCM-256';

CREATE TABLE user__user_company_permission
(
    user_id               BIGINT NOT NULL, -- user FK
    company_permission_id BIGINT NOT NULL, -- company_permission FK

    PRIMARY KEY (user_id, company_permission_id)
); -- company가 user에 부여한 권한

CREATE TABLE lookup__user_activity_log_type
(
    activity_log_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 유저 활동 유형 PK
    name             VARCHAR(32)  NOT NULL, -- 이름
    -- LOGIN,
    label            VARCHAR(16),           -- label

    PRIMARY KEY (activity_log_type_id)
); -- 유저 활동 유형

CREATE TABLE lookup__user_activity_log_target_type
(
    activity_log_target_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 유저 활동 타겟 유형 PK
    name             VARCHAR(32)  NOT NULL, -- 이름
    -- LOGIN,
    label            VARCHAR(16),           -- label

    PRIMARY KEY (activity_log_target_type_id)
); -- 유저 활동 타겟 유형 ex. 센터 수정의 경우 COMPANY


CREATE TABLE user__activity_log
(
    activity_log_id   BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 활동 PK
    activity_log_type_id   SMALLINT                     NOT NULL,  -- 활동 유형 FK
    ip_address             VARCHAR(32),                            -- ip
    country                VARCHAR(16),                            -- 활동 국가
    raw_data               VARCHAR(516),                           -- params
    user_id                BIGINT                       NOT NULL,  -- user FK
    created_datetime       TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일

    target_id                   BIGINT,                      -- 타겟 PK (타겟 유형이 COMPANY인 경우 company_id의 역할)
    activity_log_target_type_id SMALLINT,                    -- 타겟 유형 FK

    PRIMARY KEY (activity_log_id)
); -- user 활동

CREATE TABLE lookup__user_apply_permission_status
(
    apply_permission_status_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 권한신청 상태 PK
    name                       VARCHAR(16) NOT NULL, -- 상태
    -- SIGN-PENDING, CONFIRM-PENDING, CANCEL, RETURN, APPROVAL
    -- 결재 대기, 승인대기, 취소, 반려, 승인
    label                      VARCHAR(16),          -- label
    PRIMARY KEY (apply_permission_status_id)
); -- 권한 변경 신청 상태

CREATE TABLE user__apply_permission
(
    apply_permission_id        BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,                     -- 권한 신청 PK
    apply_permission_status_id SMALLINT NOT NULL,                      -- 권한신청 상태 FK
    resign_reason              VARCHAR(44),                            -- 반려사유
    user_id                    BIGINT NOT NULL,                        -- 유저 FK
    issuer_id                  BIGINT NOT NULL,                        -- 신청자 FK (본인이 될 수 도 있고 타인이 될 수 도 있다)
    document_system_code       VARCHAR(32),                            -- 결재 code
    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 신청날짜

    PRIMARY KEY (apply_permission_id)
); -- 권한 변경 신청 이력

CREATE TABLE user__apply_permission_company_permission
(
    apply_permission_id   BIGINT  NOT NULL, -- 권한변경신청 PK FK
    company_permission_id BIGINT  NOT NULL, -- 회사에 부여된 permission PK FK
    is_new                BOOLEAN NOT NULL, -- true 일경우 새로 추가되는것 false 일 경우 지워지는 것

    PRIMARY KEY (apply_permission_id, company_permission_id)
); -- 권한 변경 신청 내역

CREATE TABLE user__request_password_change
(
    access_key       VARCHAR(16)                  NOT NULL, -- 비밀번호 변경 시 사용될 키
    user_id          BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- user FK
    password         VARCHAR(2048),                         -- 변경한 비밀번호
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    deleted_datetime TIMESTAMPTZ(6),                        -- 변경하면 삭제 처리

    PRIMARY KEY (access_key)
); -- 비밀번호 변경

CREATE TABLE user__password_change_log
(
    password_change_log_id   BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- 비밀번호 변경 로그 PK
    user_id                  BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- user FK
    password                 VARCHAR(2048),                         -- 변경한 비밀번호
    created_datetime         TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (password_change_log_id)
); -- 비밀번호 변경 log

CREATE TABLE user__career
(
    career_id         BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- 경력 PK
    user_id           BIGINT                       NOT NULL, -- 경력에 해당하는 user FK
    issuer_id         BIGINT,                                -- 경력 작성자 FK
    company           VARCHAR(45),                           -- 근무회사
    job_title         VARCHAR(45),                           -- 직책
    duties            VARCHAR(45),                           -- 담당업무
    start_datetime    TIMESTAMPTZ(6),                        -- 사작일
    end_datetime      TIMESTAMPTZ(6),                        -- 종료일
    note              VARCHAR(516),                          -- 비고
    created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (career_id)
); -- 경력

CREATE TABLE lookup__user_notification_target_type
(
    notification_target_type_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 알림 targetType
    name                         VARCHAR(32)  NOT NULL, -- target 유형
    -- SERVICE,
    -- 서비스 주문
    label                        VARCHAR(32),           -- label

    PRIMARY KEY (notification_target_type_id)
); -- 알림 FK target table

CREATE TABLE lookup__notification_type
(
    notification_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 알림 유형 PK
    name                   VARCHAR(32) NOT NULL, -- 유형
    -- ALLOCATOR, SERVICE-ENGINEER, PROJECT-ENGINEER
    -- 배정자,      서비스주문 엔지니어 배정, 설치시운전 엔지니어 배정
    label                  VARCHAR(32),          -- label

    PRIMARY KEY (notification_type_id)
); -- 알림 유형

CREATE TABLE user__notification
(
    notification_id                    BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- 알림 PK
    type_id                            SMALLINT                     NOT NULL, -- 알림 유형 FK

    user_id                            BIGINT                       NOT NULL, -- user Fk
    raw_data                           VARCHAR(512)                 NOT NULL, -- 알림내용 JSON STRING

    target_id                          VARCHAR(32),                           -- FK targetId
    target_type_id                     SMALLINT,

    created_datetime                   TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    read_datetime                      TIMESTAMPTZ(6),                        -- 열람시간
    deleted_datetime                   TIMESTAMPTZ(6),                        -- 삭제일

    PRIMARY KEY (notification_id)
); -- 알림

CREATE TABLE user__schedule
(
	schedule_id				BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 일정 PK

	user_id					        BIGINT     NOT NULL,	-- 사용자 FK

	schedule_type_id        SMALLINT   NOT NULL,	-- 일정 타입 FK
	origin_reference_id     BIGINT, -- 일정 타입 유형에 따른 테이블 PK(제약조건은 걸지 않음)

	start_datetime			TIMESTAMPTZ(6) NOT NULL,	-- 시작일시
	end_datetime			  TIMESTAMPTZ(6) NOT NULL,	-- 종료일시

	description				  VARCHAR(255),							-- 내용

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (schedule_id)
);	-- 일정


CREATE TABLE lookup__schedule_type
(
	schedule_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 일정 타입 PK

	name	VARCHAR(16)	NOT NULL,	-- 유형(PRE-MEETING(프리미팅), TEST(설치시운전))
	label VARCHAR(16),          -- LABEL

	PRIMARY KEY (schedule_type_id),
	UNIQUE (name)
);	-- 일정 타입

/* ==============================================================================================================
                                                DOMAIN : content
================================================================================================================= */

CREATE TABLE lookup__content_terms_category_type
(
    type_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,         -- '이용약관 type PK'
    name       VARCHAR(32) NOT NULL UNIQUE , -- 'type 이름'
    -- 개인정보 처리방침, 서비 이용약관, 위치정보 서비스, 쿠키수집이 있다.
    label      VARCHAR(16),                  -- lable
    PRIMARY KEY (type_id)
); -- '이용약관 type '

CREATE TABLE lookup__region
(
    region_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,         -- 이용약관 지역 PK
    name      VARCHAR(32) NOT NULL UNIQUE,  -- 이용약관 지역 이름
    -- 대한민국, 미국, 유럽 및 그외
    -- KOREA, USA, EU-BEYOND

    label     VARCHAR(16),                  -- lable
    PRIMARY KEY (region_id)
); -- 이용약관 지역

CREATE TABLE content__terms_category
(
    terms_category_id        SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- '이용약관 언어별 카테고리'
    terms_category_type_id   SMALLINT    NOT NULL, -- '이용약관 type FK'
    region_id SMALLINT    NOT NULL, -- '이용약관 지역 FK'
    -- 최근 시행일, 최근 수정일은 terms를 기준으로 계산해서 가져온다. ex) term limit 1 order by created_datetime DESC

    PRIMARY KEY(terms_category_id)
) ; -- '이용약관 카테고리';


CREATE TABLE  content__terms
(
    terms_id           BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL,  -- '이용약관 PK',
    terms_category_id  SMALLINT                     NOT NULL,  -- 'category FK',
    user_id            BIGINT,                                 -- 'user FK'
    content_html       TEXT                         NOT NULL,  -- '본문',
    update_content     VARCHAR(32),                            -- '변경사항 최대32자 사용자가 직접작성',
    is_temporary       BOOLEAN        DEFAULT FALSE NOT NULL,

    created_datetime   TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- '생성일시',
    updated_datetime   TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- '수정일시',
    deleted_datetime   TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY (terms_id)
) ; -- '이용약관';

/* ==============================================================================================================
                                                DOMAIN : catalog
================================================================================================================= */
CREATE TABLE lookup__catalog_model_type
(
    model_type_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 모델 type PK
    name           VARCHAR(16) NOT NULL, -- 이름

    -- PART : 부품, GOODS : 제품
    label          VARCHAR(16),          -- lable
    PRIMARY KEY (model_type_id)
); -- 모델타입(분류)


CREATE TABLE catalog__model
(
    model_id              BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,  -- 모델 PK
    system_code           VARCHAR(64)                         NOT NULL,  -- 모델 systemCode
    parent_model_id       BIGINT,                                        -- 상위 모델 FK
    register_channel_id   SMALLINT                            NOT NULL,  -- 모델 등록채널

    name                  VARCHAR(32)                  NOT NULL,  -- 모델명
    name_global           VARCHAR(32)                  NOT NULL,  -- 모델명 Global
    model_type_id         SMALLINT,                               -- 모델 type FK (NULL 인경우 분류 안함)

    project_check_list_template  VARCHAR(32),                     -- 설치시운전 체크리스트 템플릿
    before_service_check_list_template  VARCHAR(32),              -- 예방활동 체크리스트 템플릿

    is_use                BOOLEAN         DEFAULT TRUE NOT NULL,  -- 사용유무
    is_aftermarket_place  BOOLEAN         DEFAULT TRUE NOT NULL,  -- 애프터 마켓 사용 유무

    is_service_order        BOOLEAN         DEFAULT TRUE NOT NULL,   -- 서비스 주문 접수 여부
    is_installation_target  BOOLEAN         DEFAULT TRUE NOT NULL,   -- 설치 대상인지 아닌지 여부
    is_displayed_store      BOOLEAN         DEFAULT TRUE NOT NULL,   -- 스토어 노출 여부
    use_trm                 BOOLEAN         DEFAULT TRUE NOT NULL,   -- TRM 사용 여부
    use_archive             BOOLEAN         DEFAULT TRUE NOT NULL,   -- (구)자료실 (현)뉴스센터 사용 여부

    "order"               INTEGER                      NOT NULL,  -- 순서

    is_leaf               BOOLEAN         DEFAULT TRUE NOT NULL,  -- 마지막 모델유무

    mapping_code          VARCHAR(64),                            -- 중계서버와의 제품 매핑 코드
    mapping_name          VARCHAR(64),                            -- 중계서버와의 제품 매핑 코드로도 매핑이 안된 것 들은 이름으로 매핑한다.
    depth                 SMALLINT                     NOT NULL,  -- 모델 계층 DEPTH
    map                   VARCHAR(128)                 NOT NULL,  -- 모델 계층 map (1-A-A1 의 구조일 때 (1#A#A1)의 형태
    gantry_count          SMALLINT           DEFAULT 0 NOT NULL,  -- gantry count(head가 들어갈 수 있는 소켓의 갯수)

    created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime      TIMESTAMPTZ(6),                         -- 삭제일

    PRIMARY KEY (model_id)
); -- 모델

CREATE TABLE catalog__model_option
(
    model_option_id             BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 모델 옵션 PK
    model_id                    BIGINT                                  NOT NULL,  -- 모델 FK

    name_en                     VARCHAR(32)                  NOT NULL,  -- 옵션 이름 영어
    name_ko                     VARCHAR(64)                  NOT NULL,  -- 옵션 이름 한글
    name_cn                     VARCHAR(64)                  NOT NULL,  -- 옵션 이름 중국어

    created_datetime            TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime            TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime            TIMESTAMPTZ(6),                         -- 삭제일

    PRIMARY KEY (model_option_id)
); -- 모델 옵션

CREATE TABLE catalog__model_option_value
(
    model_option_value_id       BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 모델 옵션 밸류 PK

    model_option_id             BIGINT                       NOT NULL,  -- 옵션 FK
    name_en                     VARCHAR(64)                  NOT NULL,  -- 옵션 값 이름 영어
    name_ko                     VARCHAR(64)                  NOT NULL,  -- 옵션 값 이름 한글
    name_cn                     VARCHAR(64)                  NOT NULL,  -- 옵션 값 이름 중국어

    PRIMARY KEY (model_option_value_id)
); -- 모델 옵션 값

CREATE TABLE catalog__chipmounter_head
(
    chipmounter_head_id     BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,  -- 칩마운터 헤드 PK
    model_id                BIGINT                       				NOT NULL,  -- 모델 FK

    name					    VARCHAR(32)											NOT NULL,  -- 헤드이름
    spindle_count			SMALLINT											NOT NULL,
    chip_1005R 				SMALLINT											DEFAULT 0 NOT NULL,
    chip_0603 				SMALLINT											DEFAULT 0 NOT NULL,
    chip_0402R 				SMALLINT											DEFAULT 0 NOT NULL,
    chip_03015R 			SMALLINT											DEFAULT 0 NOT NULL,
    chip_0201R 				SMALLINT											DEFAULT 0 NOT NULL,
    chip_01005R 			SMALLINT											DEFAULT 0 NOT NULL,
    QFP_BGA 				  SMALLINT											DEFAULT 0 NOT NULL,

    PRIMARY KEY (chipmounter_head_id)
); -- 모델: 칩마운터 헤드

CREATE TABLE lookup__catalog_model_image_type
(
    model_image_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 모델이미지 type PK
    name                VARCHAR(32) NOT NULL, -- type 이름

    -- MODEL : 모델 이미지, BI, BI-SLOGAN, DELEGATE-1 : 대표이미지1, DELEGATE-2 : 대표이미지2
    -- THUMB-1 : 썸네일 이미지1, THUMB-2 : 썸네일 이미지2, TIP-BOTTOM, FRONT, SIDE,
    -- SAMPLE-1 : 샘플 부품 이미지 1, SAMPLE-2 : 샘플 부품 이미지 2

    label               VARCHAR(16),          -- label
    PRIMARY KEY (model_image_type_id)
); -- 모델 이미지 type ui 뿌려주기 위한 요소

CREATE TABLE catalog__model_image
(
    model_image_id       BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 모델이미지 PK
    model_image_type_id  SMALLINT  NOT NULL, -- 모델이미지 type FK
    model_id             BIGINT    NOT NULL, -- 모델 FK
    file_id              BIGINT    NOT NULL, -- file FK

    PRIMARY KEY (model_image_id)
); -- 모델 이미지

CREATE TABLE catalog__model_option_image
(
    model_image_id  BIGINT NOT NULL, -- 모델 이미지 FK
    model_option_id BIGINT NOT NULL, -- 모델 옵션 FK

    PRIMARY KEY (model_image_id, model_option_id)
); -- 모델 옵션과 모델 이미지 N : N 해소 테이블


CREATE TABLE lookup__part_change_log_type
(
    part_change_log_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 부품변경이력 분류 PK
    name                    VARCHAR(16) NOT NULL,  -- 이름
    -- ECO, MAIL, CUSTOM
    -- ECO, 메일,  자체
    label                   VARCHAR(16),           -- label

    PRIMARY KEY (part_change_log_type_id)
); -- 부품변경이력 분류

CREATE TABLE lookup__eco_grade
(
    eco_grade_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- eco 등급
    name                    VARCHAR(16) NOT NULL,  -- 이름
    label                   VARCHAR(16),           -- label

    PRIMARY KEY (eco_grade_id)
); -- 부품변경이력 분류


CREATE TABLE lookup__part_change_log_action_type
(
    part_change_log_action_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 부품변경이력 대응 type (서비스대응, 1:1호환성, 재고처리방안)
    level1                           VARCHAR(12)  NOT NULL,  -- ex. 서비스 대응
    level2                           VARCHAR(12)  NOT NULL,  -- ex. 해당 없음
    level3                           VARCHAR(12)  NOT NULL,  -- ex. 하위자재수불

    PRIMARY KEY (part_change_log_action_type_id)
); -- 부품변경이력 조치사항 유형

CREATE TABLE catalog__part_change_log
(
    part_change_log_id      BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 부품변경이력 PK
    system_code             VARCHAR(64) UNIQUE NOT NULL,  -- system_code
    part_change_log_type_id SMALLINT           NOT NULL,  -- 부품변경이력 분류 FK
    eco_no                  VARCHAR(16),           -- ECO NO
    ecn_no                  VARCHAR(16),           -- ECN NO
    eco_grade_id            SMALLINT,              -- ECO 등급 FK
    eco_application_type    VARCHAR(32),           -- ECO 적용 유형
    eco_manager             VARCHAR(16),           -- ECO 담당자
    eco_datetime            TIMESTAMPTZ(6),        -- ECO 일자
    ecn_datetime            TIMESTAMPTZ(6),        -- ECN 일자

    is_confirmed            BOOLEAN    DEFAULT FALSE NOT NULL, -- 확정 여부

    parent_module                      TEXT,     -- 상위 모듈
    release_of_scope_company_type_id   SMALLINT, -- 공개범위 (회사유형 FK)

    description             TEXT,                -- 변경 내역 상세

    note TEXT, -- 조치사항 비고

    service_response_type_id             SMALLINT, -- 서비스 대응 유형
    service_response_description         TEXT,     -- 서비스 대응 description
    stock_management_type_id             SMALLINT, -- 재고 처리 방안 유형
    stock_management_description         TEXT,     -- 재고 처리 방안 description
    one_to_one_compatibility_type_id     SMALLINT, -- 1:1호환성 유형
    one_to_one_compatibility_description TEXT,     -- 1:1호환성 description

    manager                 VARCHAR(16),           -- 매뉴얼 담당자

    registerer_id           BIGINT,                -- 등록자
    updater_id              BIGINT,                -- 변경자

    created_datetime        TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 생성일
    updated_datetime        TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

  PRIMARY KEY (part_change_log_id)
); -- 부품 변경이력

CREATE TABLE catalog__part_change_log_before_product
(
    part_change_log_before_product_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    part_change_log_id                BIGINT    NOT NULL, -- 부품 변경 이력 FK
    product_id                        BIGINT    NOT NULL, -- 부품 FK
    sequence                          SMALLINT  NOT NULL, -- sequence

    PRIMARY KEY (part_change_log_before_product_id)
); -- 부품 변경이력 변경 전 부품

CREATE TABLE catalog__part_change_log_after_product
(
    part_change_log_after_product_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    part_change_log_id       BIGINT                NOT NULL, -- 부품 변경 이력 FK
    product_id               BIGINT                NOT NULL, -- 부품 FK
    is_pair                  BOOLEAN DEFAULT FALSE NOT NULL, --짝맞춤 부품 여부
    sequence                 SMALLINT              NOT NULL, -- sequence

    PRIMARY KEY (part_change_log_after_product_id)
); -- 부품 변경이력 변경 후 부품

CREATE TABLE catalog__part_change_log_model
(
    part_change_log_model_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    part_change_log_id       BIGINT  NOT NULL, -- 제품 FK
    model_id                 BIGINT  NOT NULL, -- 파일 FK

    serial_number       VARCHAR(32)  NOT NULL, -- 시리얼번호 또는 로그
    option              TEXT,
    created_datetime    TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime        TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

    PRIMARY KEY (part_change_log_model_id)
); -- 부품 변경이력 적용 모델

CREATE TABLE catalog__part_change_log_attachment
(
    part_change_log_attachment_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    part_change_log_id  BIGINT  NOT NULL, -- 제품 FK
    file_id             BIGINT  NOT NULL, -- 파일 FK

    registerer_id       BIGINT NOT NULL, -- 등록자 FK
    created_datetime    TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

    PRIMARY KEY (part_change_log_attachment_id)
); -- 부품 변경이력 첨부파일

CREATE TABLE lookup__product_category
(
    product_category_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 제품 및 카테고리 PK
    name                  VARCHAR(32)  NOT NULL, -- 이름
    -- Product, Part, Equipment
    label                 VARCHAR(32),           -- label

    PRIMARY KEY(product_category_id)
); -- 제품 및 부품 카테고리

CREATE TABLE lookup__product_sa
(
    product_sa_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 제품 SA/SNA PK
    name             VARCHAR(11)  NOT NULL, -- 이름
    -- SA/SNA/DNA
    label            VARCHAR(32), -- label

    PRIMARY KEY(product_sa_id)
); -- 제품 SN/SNA

CREATE TABLE lookup__product_hierarchy
(
    product_hierarchy_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 제품 계층
    name                    VARCHAR(16)  NOT NULL, -- 이름
    label                   VARCHAR(42),           -- label

    PRIMARY KEY(product_hierarchy_id),
    UNIQUE (name)
); -- 제품 계층

CREATE TABLE lookup__product_model_group
(
    product_model_group_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 제품 모델 그룹 (material group)
    name                      VARCHAR(11)  NOT NULL, -- 이름
    label                     VARCHAR(32),           -- label

    PRIMARY KEY(product_model_group_id),
    UNIQUE(name)
); -- 제품 모델 그룹 (material group)

CREATE TABLE catalog__product
(
    product_id                 BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 제품 및 부품 PK
    system_code                VARCHAR(64)                  NOT NULL,  -- 제품 및 부품 systemCode
    register_channel_id        SMALLINT                     NOT NULL,  -- 모델 등록채널
    model_id                   BIGINT,                                 -- 모델 FK

    old_system_code            VARCHAR(32),                            -- 구제품코드

    name                       VARCHAR(64)                  NOT NULL,  -- 제품명
    name_global                VARCHAR(64)                  NOT NULL,  -- 제품명 Global

    product_category_id        SMALLINT                     NOT NULL,  -- 카테고리 FK
    product_hierarchy_id       SMALLINT,                               -- 제품 계층
    product_sa_id              SMALLINT,                               -- SN/SNA/DNA FK
    product_model_group_id     SMALLINT,                               -- 모델 그룹, material group

    part                       VARCHAR(2)                   NOT NULL,  -- 제품군

    weight                     NUMERIC(12, 2)               NOT NULL,  -- 순 중량
    weight_unit                VARCHAR(5)                   NOT NULl,  -- 중량 단위
    "length"                   NUMERIC(12, 2)               NOT NULL,  -- 길이
    length_unit                VARCHAR(5),                             -- 길이 단위
    msds                       VARCHAR(128),                           -- 위험물질 체크리스트, csv
    msds_updated_datetime      TIMESTAMPTZ(6),                         -- msds updated datetime(개정일)
    is_aftermarket_monitoring  BOOLEAN        DEFAULT FALSE NOT NULL,  -- 애프터마켓 모니터링
    is_quality_monitoring      BOOLEAN        DEFAULT FALSE NOT NULL,  -- 품질 모니터링
    is_inbound_notification    BOOLEAN        DEFAULT FALSE NOT NULL,  -- 입고 알림
    is_use                     BOOLEAN        DEFAULT FALSE NOT NULL,  -- 사용 유무

    registerer                 VARCHAR(32),                            -- 등록자 중계서버 denormal
    updater_id                 BIGINT,                                 -- 변경자 FK
    updater                    VARCHAR(32),                            -- 변경자

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         -- 삭제일

    profit_centers             VARCHAR(16)                  NOT NULL,  -- profit center csv

    PRIMARY KEY (product_id),
    UNIQUE (system_code)
); -- 제품 및 부품

CREATE TABLE catalog__product_msds_attachment
(
    product_msds_attachment_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 제품 및 부품 위험물질 첨부파일 PK
    registerer_id              BIGINT,
    product_id                 BIGINT NOT NULL, -- 제품 FK
    file_id                    BIGINT NOT NULL, -- 파일 FK

    language                   VARCHAR(4) NOT NULL, -- KO,EN,CN 구분자
    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

    PRIMARY KEY (product_msds_attachment_id)
); -- 제품 및 부품 위험물질 첨부파일

CREATE TABLE catalog__product_plant
(
    product_plant_id           BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- plant PK
    plant_id                   SMALLINT                      NOT NULL, -- plant FK
    product_id                 BIGINT                        NOT NULL, -- product FK
    status                     VARCHAR(3)                    NOT NULL, -- 상태 (중계서버에서 주는대로 넣는다)

    level_material_type        VARCHAR(4)                    NOT NULL, -- Level Material Type
    deletion_flag              VARCHAR(2),                             -- deletion Flag

    registerer_id              BIGINT,                                 -- 등록자 FK
    registerer                 VARCHAR(32),                            -- 등록자 중계서버 denormal
    updater_id                 BIGINT,                                 -- 변경자
    updater                    VARCHAR(32),                            -- 변경자 중계서버 denormal

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY (product_plant_id),
    UNIQUE (product_id, plant_id)
); -- 제품 Plant

CREATE TABLE catalog__product_stock
(
    product_stock_id           BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- stock PK
    plant_id                   SMALLINT                                NOT NULL, -- plant FK
    product_id                 BIGINT                                  NOT NULL, -- product FK

    storage_location           VARCHAR(8),                             -- storage location String 값
    available_quantity         INTEGER                      NOT NULL,  -- 가용 재고수량
    quantity_unit              VARCHAR(3),                             -- 가용 재고수량 단위
    note                       VARCHAR(128),                           -- 비고
    batch_number               VARCHAR(10),                            -- 배치번호

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         --  삭제일

    safety_stock SMALLINT, -- 안전재고
    moq SMALLINT, -- MOQ
    lead_time SMALLINT, -- LT

    register_channel_id SMALLINT NOT NULL, -- 등록 채널
    updater_id BIGINT, -- 변경자
    registerer_id BIGINT, -- 변경자

    PRIMARY KEY (product_stock_id),
    UNIQUE(product_id, plant_id)
); -- 제품 재고

-- FIXME : 대체자재 기획 나오면 작업 할 것
--CREATE TABLE catalog__product_replace_product
--(
--    product_replace_product_id  BIGINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 대체자재 PK
--    target_product_id           BIGINT     NOT NULL, -- 대체되어야 할 자제 FK
--    replace_product_id          BIGINT     NOT NULL, -- 대체될 자제
--)

CREATE TABLE lookup__price_list
(
    price_list_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- price list
    name             VARCHAR(11)  NOT NULL, -- 이름
    label            VARCHAR(32), -- label

    PRIMARY KEY(price_list_id)
); -- price list

CREATE TABLE catalog__product_selling_price
(
    product_selling_price_id   BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 재품 판가 PK
    product_id                 BIGINT                       NOT NULL, -- product FK
    sales_organization_id      SMALLINT                     NOT NULL, -- sales organization
    price_list_id              SMALLINT                     NOT NULL, -- price list code, price list
    currency_id                SMALLINT                     NOT NULL, -- 통화 FK
    selling_price              NUMERIC(12, 2)               NOT NULL, -- 판매가격
    standard_price             NUMERIC(12, 2)               NOT NULL, -- 기준가격

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY (product_selling_price_id),
    UNIQUE(product_id, sales_organization_id, price_list_id)
); -- 제품 판가

CREATE TABLE catalog__product_selling_price_change_log
(
    product_selling_price_change_log_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 제품 판가 변경이력 PK
    product_selling_price_id            BIGINT                       NOT NULL, -- 제품 판가 FK
    field_name                          VARCHAR(32)                  NOT NULL, -- 변경되는 필드명
    before_value                        VARCHAR(32)                  NOT NULL, -- 이전 값
    after_value                         VARCHAR(32)                  NOT NULL, -- 새 값

    updater                             VARCHAR(32)                  NOT NULL, -- 변경자
    updated_datetime                    TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 수정일시

    PRIMARY KEY (product_selling_price_change_log_id)
); -- 제품 판가 변경 이력

-- FIXME : 2024.07.03 (데이터 상세) 신규 인터페이스 항목 처리 되어 있음
--CREATE TABLE catalog__product_supply_price
--(
--    product_supply_price_id   BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 제품 원가 PK
--    product_id                BIGINT                                  NOT NULL, -- product FK
--
--    PRIMARY KEY (product_supply_id)
--); -- 제품 원가

CREATE TABLE catalog__product_attachment
(
    product_attachment_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    product_id  BIGINT  NOT NULL, -- 제품 FK
    file_id     BIGINT  NOT NULL, -- 파일 FK

    registerer_id BIGINT NOT NULL, -- 등록자 FK
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

    PRIMARY KEY (product_attachment_id)
); -- 제품 및 부품 첨부파일

CREATE TABLE catalog__product_image
(
    product_id  BIGINT  NOT NULL, -- 제품 FK
    file_id     BIGINT  NOT NULL, -- 파일 FK
    "order"     INTEGER NOT NULL, -- 순서

    PRIMARY KEY (product_id, file_id)
); -- 제품 및 부품 이미지

CREATE TABLE catalog__product_standard_work_hour
(
    product_standard_work_hour_id     BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- 표준 공수 시간 PK
    product_id                          BIGINT                       NOT NULL, -- product FK
    model_id                            BIGINT                       NOT NULL, -- 모델 FK
    inspection_hour                    NUMERIC(12,2),                         -- 점검 공수
    action_hour                        NUMERIC(12,2),                         -- 조치 공수
    calibration_hour                   NUMERIC(12,2),                         -- 캘리브레이션 공수
    monitoring_hour                    NUMERIC(12,2),                         -- 모니터링 공수
    memo                                VARCHAR(256),                          -- 메모

    registerer_id                       BIGINT                       NOT NULL,  -- 등록자 FK

    created_datetime                    TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime                    TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시

    work_image_id                       BIGINT, -- 작업 위치/사진 FK

    PRIMARY KEY (product_standard_work_hour_id)
); -- 표준 공수 시간

CREATE TABLE catalog__product_supplier
(
    product_supplier_id          BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- 공급사 PK
    manufacturer               VARCHAR(32)                  NOT NULL, -- 제조사
    manufacturer_description   VARCHAR(64)                  NOT NULL, -- 제조사 설명
    manufacturer_part_number   VARCHAR(16)                  NOT NULL, -- 제조사 파트
    vendor                     VARCHAR(16)                  NOT NULL, -- 벤더
    vendor_description         VARCHAR(64)                  NOT NULL, -- 벤더 설명
    deletion_flag              VARCHAR(3)                   NOT NULL, -- Deletion Flag

    registerer                 VARCHAR(16),                           -- 등록자 I/F denormal
    updater                    VARCHAR(16),                           -- 수정자 I/F denormal

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY(product_supplier_id)
); -- 제품 및 부품 공급사

CREATE TABLE catalog__product_supplier_product
(
    product_supplier_product_id   BIGINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 제품 - 공급사
    product_id                        BIGINT  NOT NULL, -- 제품 FK
    product_supplier_id           BIGINT  NOT NULL, -- 공급사 FK

    PRIMARY KEY (product_supplier_product_id)
); -- 제품 - 공급사

CREATE TABLE catalog__product_sales_price
(
    product_sales_price_id     BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 영업운영판가 PK

    currency_id                SMALLINT         NOT NULL, -- currency FK
    product_id                 BIGINT           NOT NULL, -- product FK

    sales_area                 VARCHAR(12)      NOT NULL, -- 판가 지역
    cost                       NUMERIC(12, 2)   NOT NULL, -- 제조 원가
    variable_cost              NUMERIC(12, 2)   NOT NULL, -- 제조 변동비
    list_price                 NUMERIC(12, 2)   NOT NULL, -- list price
    sales_price                NUMERIC(12, 2)   NOT NULL, -- 운영 판가

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    updater_id                 BIGINT,  -- 수정자
    updater                    VARCHAR(32), -- 수정자 dinorm

    PRIMARY KEY(product_sales_price_id),
    UNIQUE(product_id, currency_id, sales_area)
); -- 제품 및 부품 영업운영 판가

CREATE TABLE catalog__product_substitute
(
    product_substitute_id         BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- PK
    model_id                      BIGINT                       NOT NULL, -- model FK
    origin_product_ids            VARCHAR(64)                  NOT NULL,  -- 원시 product pk csv

    created_datetime              TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

    PRIMARY KEY (product_substitute_id)
); -- 제품 대체 자재

CREATE TABLE catalog__product_substitute_revision
(
    product_substitute_revision_id    BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    product_substitute_id             BIGINT                       NOT NULL, -- 대체 자재 FK
    part_change_log_id                BIGINT                       NOT NULL, -- 부품 변경 이력 FK

    sequence                          SMALLINT                     NOT NULL, -- 순서
    is_final                          BOOLEAN DEFAULT FALSE        NOT NULL, -- 최종 자재 여부
    created_datetime                  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일시

    PRIMARY KEY (product_substitute_revision_id)
); -- 제품 대체 자재 revision

CREATE TABLE catalog__product_substitute_item
(
    product_substitute_item_id    BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL, -- PK
    product_substitute_id         BIGINT                       NOT NULL, -- 대체 자재 FK
    product_id                    BIGINT                       NOT NULL, -- 서비스 부품 FK (a -> b로 바뀌었을 경우 b가 여기에 들어간다)
    product_substitute_revision_id BIGINT                      NOT NULL, -- 재품 대체자재 revision fk

    PRIMARY KEY (product_substitute_item_id)
); -- 제품 대체 자재 아이템

CREATE TABLE catalog__product_model_change_log
(
    product_model_change_log_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    product_id     				       BIGINT      				          NOT NULL,  -- 제품 FK
    updater_id      		         BIGINT          			        NOT NULL,  -- 변경자 FK
    name                       	 VARCHAR(64)                  NOT NULL,  -- 제품명
    name_global                	 VARCHAR(64)                  NOT NULL,  -- 제품명 Global
    before_model_name            VARCHAR(64)                  NOT NULL,  -- 변경 전 모델명
    before_model_name_global     VARCHAR(64)                  NOT NULL,  -- 변경 전 모델명 Global
    after_model_name             VARCHAR(64)                  NOT NULL,  -- 변경 후 모델명
    after_model_name_global      VARCHAR(64)                  NOT NULL,  -- 변경 후 모델명 Global
    updater                    	 VARCHAR(32)                  NOT NULL,  -- 변경자 이름
    created_datetime			       TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시(변경일시)

    PRIMARY KEY (product_model_change_log_id)
); -- 제품 모델 수정 변경내역 로그

/* ==============================================================================================================
                                                DOMAIN : asset (자산)
================================================================================================================= */

CREATE TABLE asset__asset
(
    asset_id                   BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 자산 PK
    system_code                VARCHAR(32)                  NOT NULL,  -- 자산 systemCode
    serial_num                 VARCHAR(64)                  NOT NULL,  -- 시리얼 번호
    product_id                 BIGINT,                                 -- 제품 및 부품 FK
    owner_company_id           BIGINT,                                 -- 고객사(자산의 소유자)
    manage_company_id          BIGINT,                                 -- 담당센터
    warranty_period            SMALLINT,                               -- 보증기간(개월)
    warranty_start_datetime    TIMESTAMPTZ(6),                         -- 보증 시작일
    warranty_end_datetime      TIMESTAMPTZ(6),                         -- 보증 종료일
    manufacture_datetime       TIMESTAMPTZ(6),                         -- 제조일
    shipping_datetime          TIMESTAMPTZ(6),                         -- 출하일
    installation_datetime      TIMESTAMPTZ(6),                         -- 설치일
    register_channel_id        SMALLINT,                               -- 등록채널
    sales_order_id             BIGINT,                                 -- saleOrder Fk
    do_num                     VARCHAR(10),                            -- D/O number 중계서버 VBELN
    do_item_num                VARCHAR(6),                             -- D/O item number 중계 POSNR

    registerer_id              BIGINT,                                 -- 등록자
    registerer                 VARCHAR(32),                            -- 등록자 I/F denormal
    updater_id                 BIGINT,                                 -- 변경자
    updater                    VARCHAR(32),                            -- 변경자 I/F denormal

    assemble_company           VARCHAR(32),                            -- 조립처
    installation_location      VARCHAR(64),                            -- 설치위치
    "option"                   VARCHAR(128),                           -- 옵션
    note                       VARCHAR(256),                           -- 비고
    special_note               VARCHAR(256),                           -- 특기사항
    varfeeder                  VARCHAR(32),                            -- 바피더명
    nc_no                      VARCHAR(16),                            -- NC NO
    is_used                    BOOLEAN,                                -- 중고여부

    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime           TIMESTAMPTZ(6),                         --  삭제일

    UNIQUE (system_code),
    PRIMARY KEY (asset_id)
); -- 자산

CREATE TABLE lookup__asset_information_register_type
(
    information_register_type_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 자산 추가정보 등록경로 PK
    name                          VARCHAR(16)  NOT NULL, -- 이름
    -- HAND, QR
    -- 수기,  qr
    label                         VARCHAR(32),           -- lable
    PRIMARY KEY (information_register_type_id)
); -- 자산 추가정보 등록 경로

CREATE TABLE asset__asset_information
(
    asset_information_id          BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL,  -- 자산 추가정보 PK
    asset_id                      BIGINT                       NOT NULL,  -- 자산 FK
    registerer_id                 BIGINT,                                 -- 등록자

    raw_data                      VARCHAR(1024)                NOT NULL,  -- 추가정보 json String
    information_register_type_id  SMALLINT                     NOT NULL,  -- 등록 경로 FK
    qr_number                     VARCHAR(32),                            -- qrNumber

    created_datetime              TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime              TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime              TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY (asset_information_id)
); -- 자산 추가 정보

CREATE TABLE lookup__asset_warranty_period_status
(
    warranty_period_status_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 자산보증기간 상태 PK
    name                       VARCHAR(32)  NOT NULL, -- 이름
    -- WRITING, SIGN-PENDING, RESIGN, RENEWAL
    label                      VARCHAR(32),           -- label

    PRIMARY KEY(warranty_period_status_id)
); -- 자산 보증기간 상태

CREATE TABLE asset__asset_warranty_period
(
    asset_warranty_period_id  BIGINT GENERATED BY DEFAULT AS IDENTITY                     NOT NULL, -- 자산보증기간 PK
    asset_id                  BIGINT                        NOT NULL, -- 자산 FK
    warranty_period_status_id SMALLINT                      NOT NULL, -- 자산보증기간 상태 FK
    document_system_code      VARCHAR(32),                            -- 자산보증기간 결재 PK
    start_datetime            TIMESTAMPTZ(6)                NOT NULL, -- 보증시작일
    end_datetime              TIMESTAMPTZ(6)                NOT NULL, -- 보증종료일
    period                    INTEGER                       NOT NULL, -- 보증기간(개월)
    reason                    VARCHAR(128),                           -- 변경사유

    registerer_id             BIGINT,                                 -- 변경자
    registerer                VARCHAR(32),                            -- 변경자 I/F denormal

    created_datetime          TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시
    updated_datetime          TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
    deleted_datetime          TIMESTAMPTZ(6),                         --  삭제일

    PRIMARY KEY (asset_warranty_period_id)
); -- 자산 보증 기간

CREATE TABLE asset__asset_warranty_period_attachment
(
    asset_warranty_period_id BIGINT NOT NULL, -- 자산보증기간 FK
    file_id                  BIGINT NOT NULL, -- 파일 FK

    PRIMARY KEY(asset_warranty_period_id, file_id)
); -- 자산 보증기간 첨부파일

CREATE TABLE lookup__asset_transfer_status
(
  asset_transfer_status_id    SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 이관 신청 상태 PK
  name                        VARCHAR(16)  NOT NULL, -- 상태
  -- REQUEST, RESIGN, TRANSFERRED
  -- 요청, 반려, 이관완료
  label                       VARCHAR(32),           -- label

  PRIMARY KEY (asset_transfer_status_id)
); -- 이관 요청 상태

CREATE TABLE asset__asset_transfer_log
(
  asset_transfer_log_id    BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL,  -- 이관 이력 PK
  asset_id                 BIGINT                       NOT NULL,  -- 자산 FK
  asset_transfer_status_id SMALLINT                     NOT NULL,  -- 이관 상태 FK
  owner_company_id         BIGINT,                                 -- 고객사(이관 받은 company)
  manage_company_id        BIGINT,                                 -- 담당센터

  transferor_id            BIGINT,                                 -- 이관자

  transfer_datetime        TIMESTAMPTZ(6),                         -- 이관일

  created_datetime         TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시(요청일시)
  updated_datetime         TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
  deleted_datetime         TIMESTAMPTZ(6),                         --  삭제일

  PRIMARY KEY(asset_transfer_log_id)
); -- 자산 이관 이력


CREATE TABLE asset__asset_prevention_log
(
	asset_prevention_log_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	prevention_id	BIGINT	NOT NULL,	-- 예방활동 FK(BS, retrofit)

	asset_id	BIGINT	NOT NULL,	-- 자산 FK

	client_id	BIGINT,	-- 고객사 FK
	client_name	VARCHAR(64)	NOT NULL,	-- 고객사명(한글)
	client_name_global	VARCHAR(64),	-- 고객사명(영어)

	center_id	BIGINT,	-- 담당센터 FK
	center_name	VARCHAR(64)	NOT NULL,	-- 담당센터명(한글)
	center_name_global	VARCHAR(64),	-- 담당센터명(영어)]

	is_processed	BOOLEAN	NOT NULL,	-- 조치 완료 여부
	reject_reason	VARCHAR(256),	-- 불가 사유

	registerer_id	BIGINT,	-- 조치자 FK
	registerer	VARCHAR(32),	-- 조치자명

	created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (asset_prevention_log_id),
	UNIQUE (prevention_id, asset_id)
);	-- 자산 예방활동 로그

/* ==============================================================================================================
                                                DOMAIN : SETUP (설치 시운전)
================================================================================================================= */
CREATE TABLE setup__project
(
	project_id					BIGINT GENERATED BY DEFAULT AS IDENTITY						NOT NULL,	-- 프로젝트 PK

	system_code					VARCHAR(17)						NOT NULL,	-- 프로젝트 시스템 코드

	center_id					BIGINT							NOT NULL,	-- 담당 센터 FK
	client_id					BIGINT							NOT NULL,	-- 고객사 FK

	client_address_id			BIGINT							NOT NULL,	-- 고객사 주소 FK
	client_origin_address_id    BIGINT                          NOT NULL, -- 고객사 주소의 원본 company address id
	client_qc_coordinator_id	BIGINT,	-- 고객사 검수 담당자 FK

	register_channel_id			SMALLINT						NOT NULL,	-- 등록 채널 FK

	registerer_id				BIGINT,	-- 등록자 FK
	registerer					VARCHAR(32),	-- 등록자명 denorm

	updater_id                 BIGINT,                                 -- 변경자 FK
    updater                    VARCHAR(32),                            -- 변경자

	project_status_id			SMALLINT						NOT NULL,	-- 프로젝트 상태 FK

	name						VARCHAR(128)					NOT NULL,	-- 제목
	description					VARCHAR(255),	-- 내용

	is_htaa						BOOLEAN	DEFAULT FALSE			NOT NULL,	-- HTAA의 프로젝트인지 구분하는 컬럼(HTAA인지 아닌지에 따라 노출되는 화면이 다른 경우 있음)
	is_facility_completion		BOOLEAN	DEFAULT FALSE			NOT NULL,	-- [설치환경체크] 파워, 컴프레셔 완비 여부 등 퍼실리티 체크 완료 여부

	iv_data_encryption_key          VARCHAR(2048)                 NOT NULL,              -- IV값
    encrypted_data_encryption_key   VARCHAR(2048)                 NOT NULL,              -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

	created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (project_id),
	UNIQUE (system_code)
);	-- 프로젝트


CREATE TABLE lookup__project_status
(
	project_status_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 상태 PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(READY(진행 전), PROCESSING(진행 중), COMPLETED(완료), CANCELED(취소))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (project_status_id),
	UNIQUE (name)
);	-- 프로젝트 상태

CREATE TABLE setup__project_product
(
	project_product_id		BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	--  프로젝트 제품/부품 PK

	project_id				      BIGINT	NOT NULL,	-- 프로젝트 FK

	product_id				      BIGINT	NOT NULL,	-- 제품/부품 FK
	asset_id				        BIGINT,	-- 자산 FK(부품의 경우 없을 수 있음)
	sales_order_id		      BIGINT,	-- 판매주문 FK(판매주문을 통해 등록된 경우)

	asset_transfer_log_id 	BIGINT,	-- 이관 이력 FK(추후 이관 신청 상태를 알 수 있는 테이블의 FK로 변경되어야 함)

	shipping_item_id		    BIGINT,	-- 프로젝트 출하 배정 항목 FK

	is_registered_qr_code	  BOOLEAN	NOT NULL,	-- QR로 등록되었는지 여부

	warranty_period         SMALLINT, -- 보증기간(개월)

	created_datetime		    TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (project_product_id)
);	-- 프로젝트 제품/부품


CREATE TABLE setup__project_administrator
(
	project_administrator_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	 -- 프로젝트 관리자 PK

	project_id				BIGINT 		NOT NULL,	-- 프로젝트 FK
	user_id						BIGINT		NOT NULL,	-- 사용자 FK

	PRIMARY KEY (project_administrator_id),
	UNIQUE (project_id, user_id)
);	-- 프로젝트 관리자


CREATE TABLE setup__file
(
	file_id					BIGINT							NOT NULL,	-- 프로젝트 파일 PK(system__file의 PK)

	project_id				BIGINT							NOT NULL,	-- 프로젝트 FK

	registerer_id			BIGINT,	-- 등록자 FK
	registerer				VARCHAR(32),	-- 등록자명

	project_file_type_id	SMALLINT						NOT NULL,	-- 프로젝트 파일 유형 FK

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (file_id)
);	-- 프로젝트 파일


CREATE TABLE lookup__project_file_type
(
	project_file_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 파일 유형 PK

	name					VARCHAR(16)	NOT NULL,	-- 유형(PROJECT(프로젝트), WARRANTY-PERIOD(보증기간), ENV-CHECKING(설치환경 체크), TESTING(설치시운전 테스트), SIGN(서명))
	label         VARCHAR(16),          -- LABEL

	PRIMARY KEY (project_file_type_id),
	UNIQUE (name)
);	-- 프로젝트 파일 유형


CREATE TABLE setup__pre_meeting
(
	pre_meeting_id			BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 소요시간 PK

	project_id				  BIGINT NOT NULL,	-- 프로젝트 FK

	registerer_id			  BIGINT,	      -- 등록자 FK
	registerer				  VARCHAR(32),	-- 등록자명 denorm

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (pre_meeting_id)
);	-- 프리미팅


CREATE TABLE setup__pre_meeting_engineer
(
	pre_meeting_engineer_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프리미팅 담당자 PK

	pre_meeting_id			BIGINT		NOT NULL,	-- 프리미팅 FK
	user_id					    BIGINT		NOT NULL,	-- 사용자 FK

	PRIMARY KEY (pre_meeting_engineer_id),
	UNIQUE (pre_meeting_id, user_id)
);	-- 프리미팅 엔지니어


CREATE TABLE setup__upgrade
(
	upgrade_id					BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 업그레이드 PK

	project_id					      BIGINT							NOT NULL,	-- 프로젝트 FK

	upgrade_location_type_id	SMALLINT			NOT NULL,	-- 수행장소 FK

	created_datetime			    TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		      TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (upgrade_id),
	UNIQUE (project_id)
);	-- 프로젝트 업그레이드


CREATE TABLE lookup__upgrade_location_type
(
	upgrade_location_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 업그레이드 설치장소 유형 PK

	name						VARCHAR(8)	NOT NULL,	-- 유형(ON-SITE(On site), COE(COE))
	label           VARCHAR(16),          -- LABEL

	PRIMARY KEY (upgrade_location_type_id),
	UNIQUE (name)
);	-- 업그레이드 설치장소 유형


CREATE TABLE setup__upgrade_asset
(
	upgrade_asset_id		BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 업그레이드 자산 PK

	upgrade_id				  BIGINT							NOT NULL,	-- 업그레이드 FK
	project_product_id	BIGINT							NOT NULL,	-- 프로젝트 제품/부품 FK

	description				  VARCHAR(255),	-- 내용

	completed_datetime	TIMESTAMPTZ(6),	-- 완료일
	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (upgrade_asset_id),
	UNIQUE (project_product_id)
);	-- 프로젝트 업그레이드 자산


CREATE TABLE setup__shipping_group
(
	  shipping_group_id						BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 프로젝트 출하 그룹 PK

	  system_code									VARCHAR(11)	NOT NULL,	-- 프로젝트 출하 그룹 시스템 코드
	  project_id									BIGINT			NOT NULL,	-- 프로젝트 FK

	  registerer_id								BIGINT,	              -- 등록자 FK
	  registerer									VARCHAR(32),	        -- 등록자명

	  shipper_company_name			  VARCHAR(64),	        -- shipper/exporter 회사명
	  shipper_address_id				  BIGINT,	              -- shipper/exporter 주소 FK
	  shipper_attn_name					  VARCHAR(32),	        -- shipper 담당자명
	  shipper_phone_country_id	  SMALLINT,	            -- shipper/exporter 전화 번호 국가 FK
	  shipper_pii_phone_number    VARCHAR(2048),	      -- shipper 전화번호 pii
    shipper_pii_email_address   VARCHAR(2048), 	      -- shipper 이메일
    shipper_tax_number          VARCHAR(32),	        -- shipper 세금번호

    receiver_company_name				VARCHAR(64),	        -- receiver 회사명
	  receiver_address_id					BIGINT,	              -- receiver 주소 FK
	  receiver_origin_address_id  BIGINT,               -- receiver 주소의 원본 company address id
	  receiver_attn_id						BIGINT,	              -- receiver 담당자 FK
	  receiver_attn_name					VARCHAR(32),	        -- receiver 담당자명
	  receiver_phone_country_id		SMALLINT,	            -- receiver 전화 번호 국가 FK
	  receiver_pii_phone_number   VARCHAR(2048),        -- receiver 전화번호 pii
    receiver_pii_email_address  VARCHAR(2048),        -- receiver 이메일

    port_of_loading_name				VARCHAR(32),

    carrier_name								VARCHAR(32),

    invoice_number								VARCHAR(32),
    invoice_date								DATE,

    issuing_bank_name							VARCHAR(32),

    notify_party_company_name					VARCHAR(32),
    notify_party_pii_address					VARCHAR(2048),
    notify_party_attn_name						VARCHAR(32),
    notify_party_pii_phone_number				VARCHAR(2048),
    notify_party_pii_email_address				VARCHAR(2048),

    final_destination_name						VARCHAR(32),

    sailing_on_or_about_date					DATE,

    contract_number								VARCHAR(32),
    contract_date								DATE,

    remarks_hs_code								VARCHAR(16),

    pick_up_location_company_name				VARCHAR(32),
    pick_up_location_pii_address				VARCHAR(2048),
    pick_up_location_attn_name					VARCHAR(32),
    pick_up_location_pii_phone_number			VARCHAR(2048),
    pick_up_location_pii_email_address			VARCHAR(2048),

	created_datetime							TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime							TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (shipping_group_id),
	UNIQUE (system_code)
);	-- 프로젝트 출하 그룹

CREATE TABLE setup__shipping_group_file
(
	file_id					BIGINT							NOT NULL,	-- 프로젝트 파일 PK(system__file의 PK)
	shipping_group_id		BIGINT							NOT NULL,	-- 출하 그룹 FK

	project_file_type_id	SMALLINT						NOT NULL,	-- 프로젝트 파일 유형 FK

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (file_id)
);	-- 프로젝트 출하 그룹 파일



CREATE TABLE setup__shipping
(
	shipping_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 출하 PK

	shipping_group_id	BIGINT	NOT NULL,	-- 프로젝트 출하 그룹 FK
	parent_shipping_id	BIGINT,	-- 상위 프로젝트 출하 FK
	project_shipping_type_id	SMALLINT	NOT NULL,	-- 프로젝트 출하 타입 FK

	width	SMALLINT,	-- 패키지 가로크기(inch),
	depth	SMALLINT,	-- 패키지 세로 크기(inch),
	height	SMALLINT,	-- 패키지 높이 크기(inch),
	weight	SMALLINT,	-- 패키지 무게(LBS)

	PRIMARY KEY (shipping_id)
);	-- 프로젝트 출하


CREATE TABLE lookup__project_shipping_type
(
	project_shipping_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 출하 타입 PK

	name	VARCHAR(8)	NOT NULL,	-- 유형(CRATE(나무상자), PALLET(팔레트), BOX(박스))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (project_shipping_type_id),
	UNIQUE (name)
);	-- 프로젝트 출하 타입


CREATE TABLE setup__shipping_item
(
	shipping_item_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 출하 배정 항목 PK

	shipping_id	BIGINT	NOT NULL,	-- 프로젝트 출하 FK

	project_product_code	VARCHAR(18)	NOT NULL,	-- 프로젝트 제품/부품 코드
	project_product_name	VARCHAR(64)	NOT NULL,	-- 프로젝트 제품/부품 이름
	project_product_name_global	VARCHAR(64)	NOT NULL,	-- 프로젝트 제품/부품 이름 GLOBAL

	description	VARCHAR(255),	-- 내용

	total_quantity	SMALLINT	NOT NULL,	-- 총 수량
	unit_price	NUMERIC(19, 4)	NOT NULL,
	total_amount	NUMERIC(19, 4)	NOT NULL,	-- 총 금액

	PRIMARY KEY (shipping_item_id)
);	-- 프로젝트 출하 배정 항목


CREATE TABLE setup__test
(
	test_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 설치시운전 PK

	project_id	BIGINT	NOT NULL,	-- 프로젝트 FK

	start_datetime			TIMESTAMPTZ(6),	-- 시작일
	end_datetime 			TIMESTAMPTZ(6),	-- 종료일
	ng_count			SMALLINT	DEFAULT 0			NOT NULL,	-- NG 개수
	check_datetime		TIMESTAMPTZ(6),	-- 확인 일시
	check_engineer_id   BIGINT, -- 최종확인 엔지니어 FK

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (test_id)
);	-- 프로젝트 설치시운전


CREATE TABLE setup__test_engineer
(
	test_engineer_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 설치시운전 엔지니어 PK

	test_id	BIGINT	NOT NULL,	-- 프로젝트 설치시운전 FK
	user_id	BIGINT	NOT NULL,	-- 사용자 FK

	PRIMARY KEY (test_engineer_id),
	UNIQUE (test_id, user_id)
);	-- 설치시운전 엔지니어


CREATE TABLE setup__test_check_list
(
	test_check_list_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 설치시운전 체크리스트 PK

	project_product_id	BIGINT	NOT NULL,	-- 프로젝트 제품/부품 FK
	json_data	TEXT,	-- 체크리스트 json

	progress_rate	SMALLINT	DEFAULT 0   NOT NULL,	-- 진척률
	ng_count	SMALLINT	DEFAULT 0	NOT NULL,	-- NG 개수

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (test_check_list_id),
	UNIQUE (project_product_id)
);	-- 설치시운전 설치대상 체크리스트


CREATE TABLE setup__comment
(
	comment_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 코멘트 PK

	project_id	BIGINT	NOT NULL,	-- 프로젝트 FK
	author_id	BIGINT  NOT NULL,	-- 작성자 FK
	author	VARCHAR(32),	-- 작성자명

	description VARCHAR(1024)   NOT NULL,   -- 내용

	need_noti	BOOLEAN	DEFAULT FALSE	NOT NULL,	-- 중요(알림 발송) 여부

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (comment_id)
);	-- 프로젝트 코멘트


CREATE TABLE setup__project_user
(
	project_id	BIGINT	NOT NULL,	-- 프로젝트 PK
	user_id	BIGINT	NOT NULL,	-- 사용자 PK

	PRIMARY KEY (project_id, user_id)
);	-- 프로젝트 북마크


CREATE TABLE setup__report
(
	report_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 보고서 PK

	project_id	BIGINT	NOT NULL,	-- 프로젝트 FK
	file_id	BIGINT	NOT NULL,	-- 파일 FK

	report_print_page_size_id	SMALLINT	NOT NULL,	-- 프로젝트 보고서 규격 타입 FK

	registerer_id   BIGINT,   -- 보고서 등록자
	registerer  VARCHAR(32), -- 보고서 등록자명

	created_datetime        TIMESTAMPTZ(6)  DEFAULT NOW()   NOT NULL, -- 생성일

	PRIMARY KEY (report_id),
	UNIQUE (project_id, report_print_page_size_id)
);


CREATE TABLE lookup__report_print_page_size
(
	report_print_page_size_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 보고서 규격 타입 PK

	name VARCHAR(8)	NOT NULL,	-- 유형(A4, LETTER)
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (report_print_page_size_id),
	UNIQUE (name)
);

/* ==============================================================================================================
                                                DOMAIN : Sales Order (판매주문)
================================================================================================================= */

CREATE TABLE sales__sales_order
(
    sales_order_id          BIGINT GENERATED BY DEFAULT AS IDENTITY                       NOT NULL, -- PK
    system_code             VARCHAR(64)                     NOT NULL, -- code
    purchase_order_code     VARCHAR(64)                     NOT NULL, -- 구매코드
    sales_order_type_id     SMALLINT                        NOT NULL, -- 타입, PSTYV
    payment_type_id         SMALLINT                        NOT NULL, -- 결제 조건, ZTERM
    sales_organization_id   SMALLINT                        NOT NULL, -- 영업조직 lookup
    distribution_channel_id SMALLINT                        NOT NULL, -- 유통 채널, VTWEG lookup
    division_id             SMALLINT                        NOT NULL, -- 사업부, SPART lookup
    customer_group_id       SMALLINT                        NOT NULL, -- customer group, KDGRP
    sales_group_id          SMALLINT                        NOT NULL, -- VKGRP, lookup
    sales_office_id         SMALLINT                        NOT NULL, -- VKBUR, lookup
    sales_district_id       SMALLINT,                                 -- BZIRK, lookup
    ship_to_company_id      BIGINT                          NOT NULL, -- ship to party company FK
    sold_to_company_id      BIGINT                          NOT NULL, -- sold to party company FK
    plant_id                SMALLINT                        NOT NULL, -- WERKS, lookup
    storage_location_id     SMALLINT,                                 -- LGORT, lookup
    shipping_point_id       SMALLINT                        NOT NULL, -- VSTEL, lookup
    request_delivery_date   TIMESTAMPTZ(6)                  NOT NULL, -- ITEM_RDD
    created_datetime        TIMESTAMPTZ(6)  DEFAULT NOW()   NOT NULL, -- 생성일
    registerer_id           BIGINT,                                   -- 등록자 FK
    registerer              VARCHAR(32),                              -- 등록자
    updated_datetime        TIMESTAMPTZ(6)  DEFAULT NOW()   NOT NULL, -- 변경일
    updater_id              BIGINT,                                   -- 변경자 FK
    updater                 VARCHAR(32),                              -- 변경자
    currency_id             SMALLINT                        NOT NULL, -- 통화

    billing_no              VARCHAR(10),                              -- billing No  (M2SD3035 VBELN )
    billing_datetime        TIMESTAMPTZ(6),                           -- billing Date (M2SD3035 FKDAT )

    PRIMARY KEY (sales_order_id),
    UNIQUE(system_code)
); -- 판매 주문;

CREATE TABLE sales__sales_order_item_group
(
    sales_order_item_group_id BIGINT GENERATED BY DEFAULT AS IDENTITY                     NOT NULL, -- PK

    sales_order_id            BIGINT                        NOT NULL, -- 판매주문 FK
    product_id                BIGINT                        NOT NULL, -- 상품 FK (제품코드, 제품명)
    net_price                 NUMERIC(19, 4)                NOT NULL, -- 개당 가격                          -- net price, NETPR
    quantity                  INTEGER                       NOT NULL, -- KWMENG
    delivered_quantity        INTEGER,                                -- do quantity, LFIMG

    PRIMARY KEY (sales_order_item_group_id),
    UNIQUE (sales_order_id, product_id)
); -- 판매 주문 아이템 그룹

CREATE TABLE sales__sales_order_item
(
    sales_order_item_id         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 주문 아이템 PK
    sales_order_item_group_id   BIGINT      NOT NULL, -- 판매주문 아이템 그룹 FK
    asset_id                    BIGINT,               -- 자산 FK (제품코드, 제품명, 제품이미지, serialNumber)
    sales_order_delivery_id     BIGINT,               -- 배송 FK (tracking number)
    installed_datetime          TIMESTAMPTZ(6),       -- 설치 일자
    delivery_order_item_code    VARCHAR(6),
    sales_order_item_code       VARCHAR(64) NOT NULL, -- sales order item no

    serial_num                  VARCHAR(64),  -- 시리얼 번호 (SR 이후에 자산을 생성하여 SOI와 붙이기 위해 I/F해온 자산 시리얼 넘버를 저장해둔다.

    PRIMARY KEY (sales_order_item_id)
); -- 판매 주문 아이템

CREATE TABLE sales__sales_order_delivery
(
    sales_order_delivery_id    BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 배송 PK
    tracking_number            VARCHAR(32),                           -- 배송 번호
    expected_ship_datetime     TIMESTAMPTZ(6),                        -- 예상 ship date
    actual_ship_datetime       TIMESTAMPTZ(6),                        -- 실제 ship date
    logistics                  VARCHAR(32),                           -- 3PL (third party logistics)
    system_code                VARCHAR(64)                  NOT NULL, -- DO No
    created_datetime           TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (sales_order_delivery_id),
    UNIQUE (system_code)
); -- 배송

CREATE TABLE sales__sales_order_delivery_history
(
    sales_order_delivery_history_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 배송 내역 PK
    sales_order_delivery_id          BIGINT                       NOT NULL, -- 배송 FK
    created_datetime                 TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    title                            VARCHAR(16)                  NOT NULL,
    detail                           VARCHAR(32)                  NOT NULL,

    PRIMARY KEY (sales_order_delivery_history_id)
); -- 배송 내역 (햔황?)

CREATE TABLE lookup__distribution_channel
(
    distribution_channel_id     SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 유통 채널 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (distribution_channel_id),
    UNIQUE(name)
); -- 유통 채널

CREATE TABLE lookup__division
(
    division_id                 SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 사업부 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (division_id),
    UNIQUE (name)
); -- 사업부

CREATE TABLE lookup__sales_group
(
    sales_group_id              SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 그룹 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (sales_group_id)
); -- 판매 그룹?

CREATE TABLE lookup__sales_office
(
    sales_office_id             SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 사무실 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (sales_office_id),
    UNIQUE (name)
); -- 판매 사무실?

CREATE TABLE lookup__sales_district
(
    sales_district_id           SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 어디 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (sales_district_id),
    UNIQUE (name)
); -- 판매 어디?

CREATE TABLE lookup__storage_location
(
    storage_location_id         SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, --  storage locadtion PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),
    company_id                  BIGINT, -- company FK, 있는 애들은 custom storageLocation

    PRIMARY KEY (storage_location_id),
    UNIQUE (name)
); -- storage location

CREATE TABLE lookup__shipping_point
(
    shipping_point_id          SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (shipping_point_id),
    UNIQUE(name)
);

CREATE TABLE lookup__sales_order_type
(
    sales_order_type_id         SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 주문 타입 PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (sales_order_type_id)
); -- 판매 주문 타입

CREATE TABLE lookup__payment_type
(
    payment_type_id             SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 판매 주문 결제 타입PK
    name                        VARCHAR(64) NOT NULL,
    label                       VARCHAR(64),

    PRIMARY KEY (payment_type_id)
); -- 판매 주문 결제 타입

CREATE TABLE lookup__customer_group
(
    customer_group_id           SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (customer_group_id)
); -- 판매 주문 고객 그룹;

/* ==============================================================================================================
                                                DOMAIN : service (서비스 주문)
================================================================================================================= */
CREATE TABLE lookup__visit_date_type
(
  visit_date_type_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY   NOT NULL, -- 방문희망 일자 PK
  name                VARCHAR(16)   NOT NULL, -- 일자 type
  -- DESIGNATION, EMERGENCY, CONSULTATION
  -- 지정,         긴급,       별도협의
  label               VARCHAR(16),          -- label

  PRIMARY KEY (visit_date_type_id)
); -- 방문희망일자 type

CREATE TABLE lookup__service_check_status
(
  service_check_status_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 관리자 확인 Pk
  name                     VARCHAR(16)  NOT NULL, -- 상태 값
  -- NON-CHECK, CHECK, CANCEL-CHECK
  -- 미확인,      확인,   확인취소
  label                    VARCHAR(16),           -- label

  PRIMARY KEY (service_check_status_id)
); -- 서비스 주문 본사확인 상태

CREATE TABLE service__service_order
(
  service_order_id       BIGINT GENERATED BY DEFAULT AS IDENTITY                    NOT NULL,  -- 서비스주문 PK
  order_number           VARCHAR(32)                  NOT NULL,  -- 접수 번호
  system_code            VARCHAR(32)                  NOT NULL,  -- systemCode
  report_number          VARCHAR(32),                            -- 리포트 넘버

  profit_center_id       SMALLINT                     NOT NULL,  -- profitCenter
  asset_id               BIGINT                       NOT NULL,  -- 자산 FK
  inquiry                TEXT                         NOT NULL,  -- 문의내용

  client_company_id      BIGINT                       NOT NULL,  -- 고객사 fk
  client_manager_id      BIGINT,                                 -- 고객사 담당자
  client_examiner_id     BIGINT,                                 -- 고객사 검수자
  client_address_id      BIGINT,                                 -- 고객사 주소

  manage_company_id      BIGINT                       NOT NULL,  -- 담당센터 FK

  is_free_of_charge      BOOLEAN,                                -- 무상 서비스 유무

  visit_date_type_id     SMALLINT,                               -- 방문희망일자 type
  visit_date             TIMESTAMPTZ(6),                         -- 방문희망일자

  cause_of_failure       TEXT,                                   -- 원인내역
  action                 TEXT,                                   -- 조치내역

  failure_module_id      BIGINT,                                 -- 고장모듈 FK
  failure_area_id        BIGINT,                                 -- 고장부위 FK
  failure_type_id        BIGINT,                                 -- 고장유형 FK
  failure_phenomenon_id  BIGINT,                                 -- 고장현상 FK
  action_type_id         BIGINT,                                 -- 조치유형 FK
  action_process_id      BIGINT,                                 -- 조치작업 FK
  service_type_id        BIGINT,                                 -- 서비스 구분 FK
  service_detail_type_id BIGINT,                                 -- 서비스 상세 구분 FK

  ref_number             VARCHAR(32),                            -- 참조 번호
  sw_version_log         VARCHAR(128),                           -- 서비스 주문 후 sw version 기록용

  receptionist_id        BIGINT                       NOT NULL,  -- 접수자 FK
  receptionist           VARCHAR(32),                            -- 접수자 I/F denormal

  service_check_status_id SMALLINT                    NOT NULL,  -- 본사 확인 상태
  finished_datetime       TIMESTAMPTZ(6),                        -- 본사 확인 날짜 (확인 취소시 null)

  completed_datetime      TIMESTAMPTZ(6),                        -- 작업 완료시간


  confirm_attachment_id  BIGINT,                                 -- 검수 첨부파일 FK
  sign_attachment_id     BIGINT,                                 -- 검수 싸인 file FK

  canceled_datetime      TIMESTAMPTZ(6),                         -- 취소일
  confirmed_datetime     TIMESTAMPTZ(6),                         -- 검수일
  settlement_datetime    TIMESTAMPTZ(6),                         -- 정산일

  created_datetime       TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시(접수일자)
  updated_datetime       TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 수정일시
  deleted_datetime       TIMESTAMPTZ(6),                         -- 삭제일

  PRIMARY KEY (service_order_id)
); -- 서비스 주문

CREATE TABLE service__order_attachment
(
  service_order_id    BIGINT  NOT NULL, -- 서비스 주문 FK
  file_id             BIGINT  NOT NULL, -- file FK

  PRIMARY KEY (service_order_id, file_id)
); -- 서비스 주문 첨부파일

CREATE TABLE service__user_bookmark
(
  service_order_id  BIGINT                       NOT NULL, -- 서비스 주문 FK
  user_id           BIGINT                       NOT NULL, -- user FK

  created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

  PRIMARY KEY (service_order_id, user_id)
); -- 서비스 주문 즐겨찾기

CREATE TABLE service__engineer_allocator
(
    service_order_id BIGINT     NOT NULL, -- 서비스 주문 FK
    allocator_id     BIGINT     NOT NULL, -- 배정자 FK

    PRIMARY KEY (service_order_id, allocator_id)
); -- 엔지니어 배정자

CREATE TABLE service__engineer_engineer
(
    service_order_id   BIGINT                       NOT NULL, -- 서비스 주문 FK
    engineer_id        BIGINT                       NOT NULL, -- 엔지니어 FK
    confirmed_datetime TIMESTAMPTZ(6),                        -- 엔지니어 서비스 이력 확인 시간

    created_datetime   TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일시

    PRIMARY KEY (service_order_id, engineer_id)
); -- 엔지니어



CREATE TABLE lookup__service_type_change_status
(
    service_type_change_status_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 서비스 주문 타입 변경 승인여부 PK
    name                           VARCHAR(16)  NOT NULL, -- 승인
    -- PENDING, RESIGN, APPROVE, CANCEL-APPROVE

    -- 미승인,    반려,    승인,     승인취소
    label                          VARCHAR(32),

    PRIMARY KEY (service_type_change_status_id)
); -- 서비스타입 승인 항목

CREATE TABLE service__service_type_change_log
(
    service_type_change_log_id    BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 서비스타입 변경신청 PK
    service_order_id              BIGINT                       NOT NULL, -- 서비스 주문FK
    reason                        TEXT,                                  -- 변경사유
    service_type_change_status_id SMALLINT                     NOT NULL, -- 승인상태
    is_free_of_charge             BOOLEAN                      NOT NULL, -- 무상 서비스 유무

    issuer_id                     BIGINT                       NOT NULL, -- 요청자

    created_datetime              TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일시(변경신청일자)

    PRIMARY KEY (service_type_change_log_id)
); -- 서비스 타입 변경신청

CREATE TABLE service__service_type_change_log_attachment
(
    service_type_change_log_id   BIGINT   NOT NULL, -- 서비스타입 변경 신청 FK
    file_id                      BIGINT   NOT NULL, -- 첨부파일 FK

    PRIMARY KEY (service_type_change_log_id, file_id)
); -- 서비스 타입 변경신청 첨부파일

CREATE TABLE service__invoice
(
    invoice_id        BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 서비스 주문 invoice PK
    service_order_id  BIGINT                                  NOT NULL, -- 서비스 주문 Fk
    has_discount      BOOLEAN             DEFAULT FALSE       NOT NULL, -- 할인 받았는지 여부
    total_price       NUMERIC(12,2)                           NOT NULL, -- 금액
    created_datetime  TIMESTAMPTZ(6)      DEFAULT NOW()       NOT NULL,  -- 생성일시
    updated_datetime  TIMESTAMPTZ(6)      DEFAULT NOW()       NOT NULL,  -- 수정일시

    PRIMARY KEY (invoice_id)
); -- 서비스 주문 인보이스

CREATE TABLE service__invoice_item
(
    invoice_item_id  BIGINT GENERATED BY DEFAULT AS IDENTITY       NOT NULL, -- 서비스 주무 invoice Item
    invoice_id       BIGINT                                        NOT NULL, -- invoice Fk
    group_name       VARCHAR(32),                                            -- 내역 그룹을 위한 이름
    name             VARCHAR(32)                                   NOT NULL, -- 내역
    price            NUMERIC(12,2)                                 NOT NULL, -- 금액
    created_datetime TIMESTAMPTZ(6)      DEFAULT NOW()             NOT NULL, -- 생성일시
    PRIMARY KEY (invoice_item_id)
); -- 서비스 주문 인보이스

CREATE TABLE service__order_product
(
    order_product_id  BIGINT GENERATED BY DEFAULT AS IDENTITY      NOT NULL, -- 서비스 주문 제품 및 부품 PK
    service_order_id  BIGINT         NOT NULL, -- 서비스 주문 FK
    store_order_id    BIGINT,                  -- 스토어 ORDER FK
    system_code       VARCHAR(18),             -- 부품 코드
    name              VARCHAR(32)    NOT NULL, -- 부품명
    price_per_unit    NUMERIC(12,2)  NOT NULL, -- 개당가격
    quantity          INTEGER        NOT NULL, -- 사용수량
    product_id        BIGINT,                  -- 존재하는 제품일경우 넣는 PK

    PRIMARY KEY (order_product_id)
); -- 서비스 주문 제품 및 부품

CREATE TABLE service__action_attachment
(
    service_order_id    BIGINT  NOT NULL, -- 서비스 주문 FK
    file_id             BIGINT  NOT NULL, -- file FK

    PRIMARY KEY (service_order_id, file_id)
); -- 서비스 주문 조치내역 첨부파일

/* ==============================================================================================================
                                                DOMAIN : WORKTIME
================================================================================================================= */

CREATE TABLE worktime__worktime
(
	worktime_id				    BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 프로젝트 소요시간 PK

	registerer_id			    BIGINT,	-- 등록자 FK
	registerer				    VARCHAR(32),	-- 등록자명 denorm

    service_order_id	        BIGINT,	-- 연결된 서비스 주문 FK

	start_datetime			  TIMESTAMPTZ(6)					                NOT NULL,	-- 일자
	reference_number		  VARCHAR(32),	-- 참조번호
	memo					        VARCHAR(255),	-- 비고

	worktime_type_id		  SMALLINT						                    NOT NULL,	-- 소요시간 유형 FK
	origin_reference_id	  BIGINT						                      NOT NULL,	-- 소요시간 유형에 따른 테이블 PK(제약조건은 걸지 않음)

	is_applied_schedule	  BOOLEAN	DEFAULT FALSE			              NOT NULL,	-- 추가된 일정 캘린더에 반영 여부

	created_datetime		  TIMESTAMPTZ(6)	DEFAULT NOW()	          NOT NULL,	-- 생성일
	updated_datetime		  TIMESTAMPTZ(6)	DEFAULT NOW()	          NOT NULL,	-- 수정일

	PRIMARY KEY (worktime_id)
);	-- 소요시간


CREATE TABLE lookup__worktime_type
(
	worktime_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 소요시간 타입 PK

	name				      VARCHAR(16)	                              NOT NULL,	-- 유형(PRE-MEETING(프리미팅), TEST(설치시운전), SERVICE-ORDER(서비스주문), BS(BS), RETROFIT(리트로핏) )
	label             VARCHAR(16),                                        -- LABEL

	PRIMARY KEY (worktime_type_id),
	UNIQUE (name)
);	-- 소요시간 유형


CREATE TABLE worktime__worktime_item
(
	worktime_item_id		BIGINT GENERATED BY DEFAULT AS IDENTITY						NOT NULL,	-- 소요시간 아이템 PK

	worktime_id				BIGINT							NOT NULL,	-- 소요시간 FK
	user_id					BIGINT							NOT NULL,	-- 사용자 FK

	worktime_item_type_id	SMALLINT						NOT NULL,	-- 소요시간 타입 FK

	start_datetime			TIMESTAMPTZ(6)					NOT NULL,	-- 시작일시
	end_datetime			TIMESTAMPTZ(6)					NOT NULL,	-- 종료일시

	memo					VARCHAR(255),	-- 비고

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (worktime_item_id)
);	-- 소요시간 아이템


CREATE TABLE lookup__worktime_item_type
(
	worktime_item_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 소요시간 타입 PK

	name					VARCHAR(16)	NOT NULL,	-- 유형(MOVE(이동), WORK(작업), MEAL(식사))
	label               	VARCHAR(16),             -- LABEL

	PRIMARY KEY (worktime_item_type_id),
	UNIQUE (name)
);	-- 소요시간 아이템 타입


CREATE TABLE worktime__worktime_file
(
	file_id					BIGINT							NOT NULL,	-- 프로젝트 파일 PK(system__file의 PK)

	worktime_id			BIGINT							NOT NULL,	-- 프리미팅 FK

	registerer_id			BIGINT,	-- 등록자 FK
	registerer				VARCHAR(32),	-- 등록자명

	created_datetime		TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (file_id)
);	-- 소요시간 파일

/* ==============================================================================================================
                                                DOMAIN : VOC
================================================================================================================= */

CREATE TABLE voc__voc
(
	voc_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC PK

	system_code	VARCHAR(16)	NOT NULL,	-- 시스템코드
	sequence_id	VARCHAR(16)	NOT NULL,	-- VOC ID(VOC-YYYY%3d)

	asset_id	BIGINT	NOT NULL,	-- 자산 FK
	service_order_id    BIGINT, -- 서비스 주문 FK

	registerer_id	BIGINT,	-- 등록자 FK
	registerer	VARCHAR(32),	-- 등록자명

	updater_id	BIGINT,	-- 수정자 FK
    updater	VARCHAR(32),	-- 수정자명

    center_id   BIGINT NOT NULL,    -- 센터 FK

	client_id	BIGINT	NOT NULL,	-- 고객사 FK
	country_id	SMALLINT,	-- 국가 FK
	region_id	SMALLINT	NOT NULL,	-- 지역 FK

	receipt_datetime	TIMESTAMPTZ(6)	NOT NULL,	-- 접수일자

-- 	request_type_id	SMALLINT	NOT NULL,	-- 요청 유형 FK
	request_detail_type_id	SMALLINT	NOT NULL,	-- 요청 유형 상세 FK
	request_detail_memo	TEXT,	-- 요청 유형 상세 비고

	title	VARCHAR(255)	NOT NULL,	-- 제목
	description	TEXT	NOT NULL,	-- 내용
	completion_request_datetime	TIMESTAMPTZ(6),	-- 완료 요청일

	voc_status_id	SMALLINT	NOT NULL,	-- VOC 상태 FK

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (voc_id),
	UNIQUE (system_code),
	UNIQUE (sequence_id)
);	-- VOC


CREATE TABLE lookup__voc_status
(
	voc_status_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 상태 PK

	name	VARCHAR(16)	NOT NULL,	-- 유형(REQUEST(요청), CANCELED(취소), PROCESSING(진행중), REJECT(기각), COMPLETED(완료), DELAY(지연), WAITING(적용대기))
	label               	VARCHAR(16),             -- LABEL

	PRIMARY KEY (voc_status_id),
	UNIQUE (name)
);	-- VOC 상태


CREATE TABLE voc__request_type
(
	request_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 요청 유형 PK

	name	VARCHAR(16)	NOT NULL,	-- 유형
	label	VARCHAR(16)	NOT NULL,	-- 유형(한글)

	PRIMARY KEY (request_type_id),
	UNIQUE (name)
);	-- VOC 요청 유형


CREATE TABLE voc__request_detail_type
(
	request_detail_type_id	INTEGER GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 요청 상세 유형 PK

	request_type_id	INTEGER	NOT NULL,	-- VOC 요청 유형 FK
	name	VARCHAR(32)	NOT NULL,	-- 상세 유형
	label	VARCHAR(32)	NOT NULL,	-- 상세 유형(한글)

	PRIMARY KEY (request_detail_type_id),
	UNIQUE (name)
);	-- VOC 요청 상세 유형


CREATE TABLE voc__approval
(
	approval_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 승인 PK

	voc_id	BIGINT	NOT NULL,	-- VOC FK
	voc_grade_id	SMALLINT,	-- 승인 등급 FK

	is_improvement_target	BOOLEAN,	-- 개선 대상 여부

	-- request_type_id	SMALLINT	NOT NULL,	-- 요청 유형 FK
	request_detail_type_id	INTEGER	NOT NULL,	-- 요청 상세 유형 FK

	administrator_id	BIGINT,	-- VOC 관리자 FK(승인/기각일 경우 필요)
	coordinator_id	BIGINT,	-- 개선 담당자 FK
	coordinator_circle_user_key           VARCHAR(64),
	coordinator_name               	      VARCHAR(32),
    coordinator_name_global               VARCHAR(64),
	coordinator_department               	VARCHAR(32),
	coordinator_company_name_local        VARCHAR(32),
	coordinator_company_name_global       VARCHAR(64),
	coordinator_job_title               	VARCHAR(32),

	approval_datetime	TIMESTAMPTZ(6),	-- 승인일
	description	TEXT,	-- 접수 의견

	PRIMARY KEY (approval_id),
	UNIQUE (voc_id)
);


CREATE TABLE lookup__voc_grade
(
	voc_grade_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 승인 등급 PK

	name	VARCHAR(8)	NOT NULL,	-- 유형(A,B,C,D)
	label               	VARCHAR(16),             -- LABEL

	PRIMARY KEY (voc_grade_id),
	UNIQUE (name)
);	-- VOC 승인 등급


CREATE TABLE voc__measure
(
	measure_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 조치 PK

	voc_id	BIGINT	NOT NULL,	-- VOC FK
	measure_type_id	INTEGER,	-- 조치 유형 FK

	reason	TEXT,	-- 원인
	solution	TEXT,	-- 대책

	completed_datetime	TIMESTAMPTZ(6),	-- 조치 완료일
	client_applied_datetime	TIMESTAMPTZ(6),	-- 고객사 적용 일자

	PRIMARY KEY (measure_id),
	UNIQUE (voc_id)
);	-- VOC 조치


CREATE TABLE voc__measure_type
(
	measure_type_id	INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- VOC 조치 유형 PK

	name	VARCHAR(64)	NOT NULL,	-- 유형(ECO 대응, 베타 대응, 차기 변경점반영, 공정관리 강화, 표기 정정, 서비스 대응, 현수준 협의, 기타/작업자 교육, 신기종 반영)
	label   VARCHAR(64) NOT NULL,   -- 유형(한글)

	PRIMARY KEY (measure_type_id),
	UNIQUE (name)
);	-- VOC 조치 유형


CREATE TABLE voc__support
(
	support_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 지원 현황 PK

	voc_id	BIGINT	NOT NULL,	-- VOC FK

	description	TEXT,	-- 내용

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 변경일

	PRIMARY KEY (support_id),
	UNIQUE (voc_id)
);	-- VOC 지원 현황


CREATE TABLE voc__email_template
(
	email_template_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 이메일 템플릿 PK

	voc_status_id	SMALLINT	NOT NULL,	-- VOC 상태 FK
	title   VARCHAR(255)    NOT NULL,   -- 이메일 제목
	data	TEXT	NOT NULL,	-- 템플릿 데이터

	PRIMARY KEY (email_template_id),
	UNIQUE (voc_status_id)
);	-- VOC 이메일 템플릿


CREATE TABLE voc__email_log
(
	email_log_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 이메일 발송 이력 PK

	voc_id	      BIGINT	     NOT NULL,	-- VOC FK
	sequence_id 	VARCHAR(10)	 NOT NULL,	-- 발송이력 코드(YYYYMM%4d)

	voc_status_id	SMALLINT	   NOT NULL,	-- VOC 상태 FK

  title         VARCHAR(255) NOT NULL,  -- 발송완료된 이메일 제목
	data	        TEXT	       NOT NULL,	-- 발송완료된 이메일 데이터

	created_datetime	TIMESTAMPTZ(6) DEFAULT NOW()	NOT NULL,	-- 생성일(발송 일자)

	PRIMARY KEY (email_log_id),
	UNIQUE (sequence_id)
);	-- VOC 이메일 발송 이력


CREATE TABLE voc__email_receiver
(
	email_receiver_id	BIGINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- VOC 이메일 수신자 PK

	email_log_id	BIGINT	NOT NULL,	-- VOC 이메일 발송 이력 FK
	receiver_id	  BIGINT NOT NULL,	-- 수신자 FK

	is_completed	BOOLEAN	NOT NULL,	-- 발송 완료 여부

	mail_key        VARCHAR(32),    -- 민수포사 메일키
	failure_reason  VARCHAR(64),    -- 메일 발송 실패 사유

	PRIMARY KEY (email_receiver_id),
	UNIQUE (email_log_id, receiver_id)
);	-- VOC 이메일 수신자


CREATE TABLE voc__voc_user
(
	voc_id	BIGINT	NOT NULL,	-- VOC PK
	user_id	BIGINT	NOT NULL,	-- USER PK

	PRIMARY KEY (voc_id, user_id)
);	-- VOC 즐겨찾기

/* ==============================================================================================================
                                                DOMAIN : STORE
================================================================================================================= */
CREATE TABLE store__store_order
(
	store_order_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

	system_code VARCHAR(15) NOT NULL, -- 시스템코드

	is_free BOOLEAN DEFAULT FALSE NOT NULL, -- 유무상 구분, FALSE 유상, TRUE 무상, 유상이 기본 값

  orderer_id                  BIGINT NOT NULL, -- 주문자
  orderer_internal_fax_number VARCHAR(8), -- 주문자 팩스 내선번호
  orderer_internal_number     VARCHAR(8), -- 주문자 내선번호

  store_order_status_id SMALLINT NOT NULL, -- 주문 상태 (임시저장, 확인필요, 승인, 거절, 수정요청, 완료)
  store_order_type_id   SMALLINT NOT NULL,  -- 주문 유형 (일반주문, 구매품의, 수주품의, 무상출고품의)

  company_id        BIGINT NOT NULL, -- company FK && 신청 센터
  client_id         BIGINT, -- 고객사 FK
  client_manager_id BIGINT, -- 고객사 담당자 FK

  document_system_code VARCHAR(64), -- 품의 결재 코드 (클라한테 받음)
  document_status_id   SMALLINT,  -- 품의 결재 상태 FK, (진행중, 승인, 반려), 상세 호출할 때 documentSystemCode -> minsu 한테 넘겨줌, default 진행중
  document_reason      VARCHAR(512), -- 품의 정보 > 사유 || 문제점 및 무상출고 사유
  document_note        VARCHAR(512), -- 품의 정보 > 특이사항
  document_title       VARCHAR(64),  -- 품의 정보 > 제목
  document_header      VARCHAR(512), -- 품의 정보 > 머리글
  document_shipping    VARCHAR(512), -- 품의 정보 > 배송정보

  contract_payment_terms VARCHAR(64), -- 계약서 정보 > Payment Terms
  contract_packing VARCHAR(64),  -- 계약서 정보 > packing
  contract_inspection VARCHAR(64), -- 계약서 정보 > inspection
  contract_insurance VARCHAR(64),  -- 계약서 정보 > insurance
  contract_port_of_entry VARCHAR(64),  -- 계약서 정보 > port of entry
  contract_port_of_shipment VARCHAR(64), -- 계약서 정보 > port of shipment
  contract_other_terms_condition VARCHAR(128),  -- 계약서 정보 > other terms and condition
  contract_collecting_bank VARCHAR(256),  -- 계약서 정보 > collecting bank

  description TEXT, -- 비고

  reject_reason VARCHAR(64), -- 거절 사유
  request_update_reason VARCHAR(64), -- 수정요청 사유

  updater_id BIGINT, -- 수정자
  created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
  updated_datetime      TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

  material_request_center_id BIGINT NOT NULL, -- 자재 승인센터

  is_stock_order BOOLEAN DEFAULT FALSE NOT NULL, -- 스토어-출고에서 이루어진 주문여부

  origin_store_order_id BIGINT, -- 백오더인 경우 백오더의 원시 주문 FK

	PRIMARY KEY (store_order_id)
);	-- store 주문

CREATE TABLE store__store_order_item
(
	store_order_item_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
	store_order_id  BIGINT  NOT NULL, -- store 주문 FK

	used_parts_id BIGINT, -- 사용부품 FK (서비스 연계 주문)
	product_id BIGINT NOT NULL, -- product FK (그 외)

	description1 TEXT, -- 비고1
	description2 TEXT, -- 비고2

  quantity SMALLINT NOT NULL, -- 주문 수량

  supply_price NUMERIC(12,2), -- 원가 (무상 출고 주문 시 입력가능)

  updater_id BIGINT, -- 수정자
  created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
  updated_datetime      TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

  confirmed_quantity SMALLINT, -- 확정수량

	PRIMARY KEY (store_order_item_id)
);	-- store 주문 아이템

CREATE TABLE store__store_processed_order_item
(
	store_processed_order_item_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  store_order_item_id BIGINT NOT NULL, -- order item FK
  quantity SMALLINT NOT NULL, -- 수량
  sales_order_id BIGINT, -- 판매주문 FK
  sales_order_system_code VARCHAR(11), -- 판매주문 코드
  store_processed_order_item_type VARCHAR(11) NOT NULL, -- 완료 || 판매주문 연결

	PRIMARY KEY (store_processed_order_item_id)
);	-- store 주문 완료&판매주문 연결 아이템

CREATE TABLE store__store_order_attachment
(
	store_order_attachment_id	BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
	store_order_id  BIGINT  NOT NULL, -- store 주문 FK
	file_id BIGINT NOT NULL, -- file FK

	registerer_id BIGINT NOT NULL, -- 등록자 FK
	created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,  -- 생성일시

	PRIMARY KEY (store_order_attachment_id)
);	-- store 주문 첨부파일

CREATE TABLE store__store_order_comment
(
	store_order_comment_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
	store_order_id  BIGINT  NOT NULL, -- store 주문 FK

	author_id BIGINT  NOT NULL, -- 등록자
	created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,

  description TEXT  NOT NULL, -- 내용

	PRIMARY KEY (store_order_comment_id)
);	-- store 주문 코멘트

CREATE TABLE store__store_wish
(
	store_wish_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

	company_id BIGINT NOT NULL, -- company FK

  registerer_id BIGINT NOT NULL, -- 등록자 FK
	product_id BIGINT NOT NULL, -- product FK

	quantity SMALLINT NOT NULL, -- 주문수량

  created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,

	PRIMARY KEY (store_wish_id)
);	-- store 관심목록

CREATE TABLE store__store_export
(
  store_export_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  company_id BIGINT NOT NULL, -- company FK
  store_export_status_id SMALLINT NOT NULL, -- export status FK

  reject_reason VARCHAR(64), -- 기각 사유
  system_code VARCHAR(14) NOT NULL, -- ex) R-20240101Random(4)
  remark TEXT, -- 비고

  requester_id BIGINT NOT NULL, -- 요청자
  created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

  processor_id BIGINT, -- 처리자
  updated_datetime      TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 수정일

	PRIMARY KEY (store_export_id)
);	-- 스토어 출고

CREATE TABLE store__store_export_item
(
  store_export_item_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  store_export_id BIGINT NOT NULL, -- store export FK
  used_parts_id BIGINT, -- 사용부품 FK
  product_id BIGINT, -- product FK

  execute_remain_quantity SMALLINT NOT NULL, -- 출고 잔여수량
  completion_remain_quantity SMALLINT NOT NULL, --마감 잔여수량
  quantity SMALLINT NOT NULL, -- 요청 수량

	PRIMARY KEY (store_export_item_id)
);	-- 스토어 출고 아이템

CREATE TABLE store__store_export_execute
(
  store_export_execute_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
  store_export_id BIGINT NOT NULL, -- 출고 FK
  remark VARCHAR(64), -- 비고

  processor_id BIGINT NOT NULL, -- 생성자
  created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

	PRIMARY KEY (store_export_execute_id)
);	-- 스토어 출고 아이템 출고

CREATE TABLE store__store_export_execute_item
(
  store_export_execute_item_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  store_export_execute_id BIGINT NOT NULL, -- execute FK
  store_export_item_id BIGINT NOT NULL, -- export item FK
  quantity SMALLINT NOT NULL, -- 출고 수량

  PRIMARY KEY(store_export_execute_item_id)
); -- 스토어 출고 > 출고 아이템

CREATE TABLE store__store_export_completion
(
  store_export_completion_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
  store_export_completion_type_id SMALLINT NOT NULL, -- 마감 처리 유형
  store_export_id BIGINT NOT NULL, -- 출고 FK

  customer_po_number VARCHAR(32), -- 고객 PO 번호
  remark VARCHAR(256), -- 비고

  processor_id BIGINT NOT NULL, -- 생성자
  created_datetime      TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

  store_order_id BIGINT, -- 스토어 주문 FK

	PRIMARY KEY (store_export_completion_id)
);	-- 스토어 출고 아이템 마감

CREATE TABLE store__store_export_completion_item
(
  store_export_completion_item_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  store_export_completion_id BIGINT NOT NULL, -- completion FK
  store_export_item_id BIGINT NOT NULL, -- export item FK
  quantity SMALLINT NOT NULL, -- 출고 수량

  PRIMARY KEY(store_export_completion_item_id)
); -- 스토어 출고 > 마감 아이템

CREATE TABLE store__store_export_completion_email_receiver
(
  store_export_completion_email_receiver_id	BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  store_export_completion_id BIGINT NOT NULL, -- 출고 아이템 마감 FK
  receiver_id BIGINT NOT NULL, -- 수신자 FK

	PRIMARY KEY (store_export_completion_email_receiver_id)
);	-- 스토어 출고 아이템 마감 알림 전송

CREATE TABLE domain__used_parts
(
  used_parts_id	BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

  company_id BIGINT NOT NULL, -- 센터 FK
	product_id BIGINT, -- product FK
	target_system_code VARCHAR(32) NOT NULL, -- target systemCode (설치시운전 || 서비스주문 || 예방활동)
	target_type VARCHAR(13) NOT NULL, -- target type PROJECT || SERVICE-ORDER || PREVENTION)
	quantity SMALLINT NOT NULL, -- quantity
	asset_id BIGINT, -- 자산 FK Serial Number 때문에 필요함
	selling_price NUMERIC(12, 2) NOT NULL, -- 단가
	product_name VARCHAR(64) NOT NULL, -- 부품명
	product_system_code VARCHAR(64) NOT NULL, -- 부품코드
	is_temp BOOLEAN DEFAULT FALSE NOT NULL, -- 임시여부 (예방활동에서 TRUE)

	created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL,

	PRIMARY KEY (used_parts_id)
);	-- 사용부품

CREATE TABLE lookup__store_export_status
(
    store_export_status_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (store_export_status_id)
); -- 스토어 출고 상태

CREATE TABLE lookup__store_export_completion_type
(
    store_export_completion_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                            VARCHAR(32)           NOT NULL,
    label                           VARCHAR(32),

    PRIMARY KEY (store_export_completion_type_id)
); -- 스토어 출고 마감 유형

CREATE TABLE lookup__store_order_status
(
    store_order_status_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (store_order_status_id)
); -- 스토어 주문 상태

CREATE TABLE lookup__store_order_type
(
    store_order_type_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                      VARCHAR(32)           NOT NULL,
    label                     VARCHAR(32),

    PRIMARY KEY (store_order_type_id)
); -- 스토어 주문 유형

CREATE TABLE store__trm_intro_setting
(
  trm_intro_setting_id      SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

  default_category_model_id BIGINT,
  is_use                    BOOLEAN DEFAULT FALSE NOT NULL, -- trm 소개 사용

  PRIMARY KEY (trm_intro_setting_id)
); -- trm 소개 setting

CREATE SEQUENCE seq_store_trm_intro_version;

CREATE TABLE store__trm_intro
(
  trm_intro_id      BIGINT GENERATED BY DEFAULT AS IDENTITY                             NOT NULL, -- PK
  version           INTEGER             DEFAULT nextval('seq_store_trm_intro_version')  NOT NULL, -- version
  is_html           BOOLEAN             DEFAULT FALSE                                   NOT NULL, -- HTML로 작성 여부 (false일경우 에디터임)
  content           TEXT                                                                NOT NULL,
  changes           VARCHAR(64),                                                                  -- 변경사항

  registerer_id     BIGINT                                                              NOT NULL, -- 등록자 Fk
  created_datetime  TIMESTAMPTZ(6)      DEFAULT NOW()                                   NOT NULL, -- 등로일시

  PRIMARY KEY (trm_intro_id)
); -- trm 소개

SELECT setval('seq_store_trm_intro_version', (SELECT MAX(version) FROM store__trm_intro) + 1);

CREATE TABLE store__trm_model
(
  model_id  BIGINT  NOT NULL, -- model FK
  trm_id    BIGINT  NOT NULL, -- trm FK

  PRIMARY KEY (model_id, trm_id)
); -- trm 과 model 연결 테이블

CREATE TABLE store__trm_version
(
    trm_version_id    BIGINT  GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK

    version           NUMERIC(12,2)                        NOT NULL, -- 버전
    changes           VARCHAR(64),                                   -- 변경사항

    registerer_id     BIGINT,                                        -- 등록자 FK

    created_datetime  TIMESTAMPTZ(6) DEFAULT NOW()         NOT NULL, -- 생성일시(접수일자)
    updated_datetime  TIMESTAMPTZ(6) DEFAULT NOW()         NOT NULL, -- 수정일시
    deleted_datetime  TIMESTAMPTZ(6),                                -- 삭제일

    PRIMARY KEY (trm_version_id)
); -- trm 버전

CREATE TABLE store__trm
(
    trm_id             BIGINT GENERATED  BY DEFAULT AS IDENTITY  NOT NULL, -- PK
    trm_version_id     BIGINT                                NOT NULL, -- version FK
    title              VARCHAR(32)                           NOT NULL, -- 제목
    parent_id          BIGINT,                                         -- 부모 FK
    right_before_id    BIGINT,                                         -- 직전 trm FK

    depth              INTEGER                               NOT NULL, -- depth
    map                VARCHAR(256)                          NOT NULL, -- map

    file_id            BIGINT,                                         -- 도면 FK

    created_datetime   TIMESTAMPTZ(6) DEFAULT NOW()          NOT NULL, -- 생성일시(접수일자)
    updated_datetime   TIMESTAMPTZ(6) DEFAULT NOW()          NOT NULL, -- 수정일시
    deleted_datetime   TIMESTAMPTZ(6),                                 -- 삭제일

    PRIMARY KEY (trm_id)
); -- trm

CREATE TABLE store__drawing_number
(
    drawing_number_id  BIGINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- PK
    trm_id             BIGINT                               NOT NULL, -- trm FK
    number             VARCHAR(16)                          NOT NULL, -- 번호

    created_datetime   TIMESTAMPTZ(6) DEFAULT NOW()         NOT NULL,  -- 생성일시(접수일자)
    updated_datetime   TIMESTAMPTZ(6) DEFAULT NOW()         NOT NULL,  -- 수정일시
    deleted_datetime   TIMESTAMPTZ(6),                                 -- 삭제일

    PRIMARY KEY (drawing_number_id)
); -- 도면 번호

CREATE TABLE store__drawing_coordinate
(
    drawing_coordinate_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    drawing_number_id      BIGINT                              NOT NULL, -- number FK
    x_coordinate           NUMERIC(12, 5)                      NOT NULL, -- x 좌표
    y_coordinate           NUMERIC(12, 5)                      NOT NULL, -- y 좌표

    created_datetime       TIMESTAMPTZ(6) DEFAULT NOW()        NOT NULL,  -- 생성일시(접수일자)
    updated_datetime       TIMESTAMPTZ(6) DEFAULT NOW()        NOT NULL,  -- 수정일시
    deleted_datetime       TIMESTAMPTZ(6),                                -- 삭제일

    PRIMARY KEY (drawing_coordinate_id)
); -- 도면 좌표

CREATE TABLE store__drawing_coordinate_product
(
    drawing_coordinate_product_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    drawing_coordinate_id          BIGINT                                  NOT NULL, -- 도면 좌표 FK
    product_id                     BIGINT                                  NOT NULL, -- 부품 Fk
    remark                         VARCHAR(32),                                      -- remark
    quantity                       INTEGER             DEFAULT 1           NOT NULL, -- 수량
    is_present                     BOOLEAN             DEFAULT TRUE        NOT NULL, -- 공개 여부
    created_datetime               TIMESTAMPTZ(6)      DEFAULT NOW()       NOT NULL, -- 생성일시(접수일자)
    updated_datetime               TIMESTAMPTZ(6)      DEFAULT NOW()       NOT NULL, -- 수정일시
    deleted_datetime               TIMESTAMPTZ(6),                                   -- 삭제일

    PRIMARY KEY (drawing_coordinate_product_id)
); -- 좌표 제품


/* ==============================================================================================================
                                                DOMAIN : PREVENTION
================================================================================================================= */

CREATE TABLE prevention__prevention
(
    prevention_id   BIGINT  GENERATED ALWAYS AS IDENTITY    NOT NULL,   -- pk

    prevention_type_id  SMALLINT    NOT NULL,   -- 예방활동 타입 FK
    system_code VARCHAR(16) NOT NULL,	-- 시스템코드

    prevention_status_id	SMALLINT	NOT NULL,	-- 예방활동 상태 FK
    cancel_reason   VARCHAR(128),   -- 프로젝트 취소 사유

    registerer_id	BIGINT,	-- 등록자 FK
    registerer	VARCHAR(32),	-- 등록자명 denorm

    updater_id	BIGINT,	-- 변경자 FK
    updater	VARCHAR(32),	-- 변경자명 denorm

    created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일
    updated_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

    PRIMARY KEY (prevention_id),
    UNIQUE (system_code)
);  -- 예방활동


CREATE TABLE lookup__prevention_status
(
	prevention_status_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 예방활동 상태 PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(PROCESSING(진행 중), COMPLETED(완료), CANCELED(취소))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (prevention_status_id),
	UNIQUE (name)
);	-- 예방활동 상태


CREATE TABLE prevention__bs
(
	bs_id	BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,	-- pk
	prevention_id   BIGINT  NOT NULL,   -- 예방활동 FK

	sequence_id	VARCHAR(16)	NOT NULL,	-- BS ID(BS-YYYYMMDD%4d)

	start_date DATE,	-- 시작 예정 일자
	end_date	DATE,	-- 종료 예정 일자

	creation_center_id	BIGINT	NOT NULL,	-- 생선 센터 FK
	management_center_id	BIGINT	NOT NULL,	-- 관리 센터 FK

	title	VARCHAR(128),	-- 프로젝트명
	processing_reason	VARCHAR(1024),	-- 진행 사유
	processing_item	TEXT,	-- 시행 항목

	service_detail_type_id	BIGINT,	-- 서비스 상세 구분 FK(system__service_action)

	PRIMARY KEY (bs_id),
	UNIQUE(sequence_id)
);	-- BS


CREATE TABLE prevention__bs_cost_item
(
	bs_cost_item_id	BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,	-- pk

	bs_id	BIGINT	NOT NULL,	-- BS FK

	item	VARCHAR(32)	NOT NULL,	-- 비목
	amount	NUMERIC(19, 4)	NOT NULL,	-- 금액

	PRIMARY KEY (bs_cost_item_id)
);	-- BS 비목


CREATE TABLE lookup__bs_group
(
	bs_group_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(A-GROUP(A그룹), B-GROUP(B그룹), C-GROUP(C그룹), D-GROUP(D그룹), E-GROUP(E그룹))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (bs_group_id),
	UNIQUE (name)
);	-- BS 그룹


CREATE TABLE prevention__bs_administrator
(
	bs_administrator_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_id	BIGINT	NOT NULL,	-- BS FK
	user_id	BIGINT	NOT NULL,	-- 사용자 FK

	bs_group_id	SMALLINT	NOT NULL,	-- BS 그룹 FK,

	PRIMARY KEY (bs_administrator_id),
	UNIQUE (bs_id, user_id)
);	-- BS 관리자


CREATE TABLE prevention__bs_client
(
	bs_client_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_id	BIGINT	NOT NULL,	-- BS FK

	client_id	BIGINT	NOT NULL,	-- 고객사 FK
	client_address_id	BIGINT,	-- 고객사 주소 FK

	bs_group_id	SMALLINT	NOT NULL,	-- BS 그룹 FK

	check_datetime		TIMESTAMPTZ(6),	-- 최종 확인 일시

	check_engineer_id	BIGINT,	-- 최종 확인 엔지니어 FK
	client_coordinator_id	BIGINT,	-- 고객사 검수 담당자 FK

	PRIMARY KEY (bs_client_id),
	UNIQUE (bs_id, client_id)
);	-- BS 고객사


CREATE TABLE prevention__bs_production_species
(
	bs_production_species_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK
	bs_client_applied_species_type_id	BIGINT	NOT NULL,	-- BS 고객사 고객 적용 물종 FK

	memo	TEXT,	-- 비고
	image_id	BIGINT,	-- 이미지 FK

	PRIMARY KEY (bs_production_species_id)
);	-- BS 고객사 생산물종


CREATE TABLE prevention__bs_industry_type
(
	bs_industry_type_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(영어)
	label               VARCHAR(16) NOT NULL,	-- 유형(한글)

	PRIMARY KEY (bs_industry_type_id),
	UNIQUE (name)
);	-- BS 고객사 생산물종-산업군


CREATE TABLE prevention__bs_client_applied_species_type
(
	bs_client_applied_species_type_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_industry_type_id	BIGINT	NOT NULL,	-- 상위 산업군
	name				VARCHAR(16)	NOT NULL,	-- 유형(영어)
	label               VARCHAR(16) NOT NULL,	-- 유형(한글)

	PRIMARY KEY (bs_client_applied_species_type_id),
	UNIQUE (name)
);	-- BS 고객사 생산물종-고객 적용 물종


CREATE TABLE prevention__bs_am
(
	bs_am_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK
	model_id	BIGINT	NOT NULL,	-- 모델 FK

	memo	TEXT,	-- 비고

	PRIMARY KEY (bs_am_id)
);	-- BS 고객 관심 상품(AM)


CREATE TABLE prevention__bs_job_description
(
	bs_job_description_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK
	image_id	BIGINT,	-- 이미지 FK

	description	TEXT,	-- 상세 내용

	registerer_id   BIGINT, -- 작성자 FK
	registerer	VARCHAR(32),	-- 작성자명

	PRIMARY KEY (bs_job_description_id)
);	-- BS 고객사 작업 특이사항


CREATE TABLE prevention__bs_client_comment
(
	bs_client_comment_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK

	registerer_id	BIGINT,	-- 작성자 FK
	registerer	VARCHAR(32),	-- 작성자명

	description	VARCHAR(512)	NOT NULL,	-- 내용

	created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (bs_client_comment_id)
);	-- BS 고객사 의견


CREATE TABLE lookup__bs_client_file_type
(
	bs_client_file_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- BS 고객사 파일 타입 PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(FIELD(현장사진), CHECK(최종확인 파일), SIGN(사인))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (bs_client_file_type_id),
	UNIQUE (name)
);	-- BS 고객사 파일 타입


CREATE TABLE prevention__bs_client_file
(
	file_id	BIGINT	NOT NULL,	-- 파일 PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK
	bs_client_file_type_id	SMALLINT	NOT NULL,	-- BS 고객사 파일 타입 FK

	PRIMARY KEY (file_id)
);	-- BS 고객사 파일


CREATE TABLE prevention__bs_asset
(
	bs_asset_id	BIGINT	GENERATED ALWAYS AS IDENTITY NOT NULL,	-- PK

	bs_client_id	BIGINT	NOT NULL,	-- BS 고객사 FK
	asset_id	BIGINT	NOT NULL,	-- 자산 FK

	progress_rate	SMALLINT    DEFAULT 0,	-- 진행률
	json_data	TEXT,	-- 체크리스트 json
	completed_datetime TIMESTAMPTZ(6),    -- 조치일

    is_rejected     BOOLEAN DEFAULT FALSE   NOT NULL,   -- 진행 불가 여부
	reject_reason	VARCHAR(256),	-- 불가 사유

	PRIMARY KEY (bs_asset_id),
	UNIQUE (bs_client_id, asset_id)
);	-- BS 대상 설비


CREATE TABLE prevention__bs_file
(
	file_id	BIGINT	NOT NULL,	-- PK

	bs_id	BIGINT	NOT NULL,	-- BS FK

	registerer_id	BIGINT,	-- 등록자 FK
	registerer	VARCHAR(32),	-- 등록자명

	created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (file_id)
);	-- BS 첨부 파일


CREATE TABLE prevention__bs_user
(
	bs_id	BIGINT	NOT NULL,	-- BS PK
	user_id	BIGINT	NOT NULL,	-- USER PK

	PRIMARY KEY (bs_id, user_id)
);	-- BS 즐겨찾기


CREATE TABLE prevention__retrofit
(
	retrofit_id	BIGINT	GENERATED ALWAYS AS IDENTITY NOT NULL,	-- PK
	prevention_id   BIGINT  NOT NULL,   -- 예방활동 FK

	sequence_id	VARCHAR(16)	NOT NULL,	-- 리트로핏 ID(RT-YYYYMMDD%4d)

	design_change_grade	SMALLINT,	-- 설계변경등급(1, 2)
	processing_grade	CHAR(1),	-- 처리유형등급(A, B)

	start_date DATE,	-- 시작 예정 일자

	service_detail_type_id	BIGINT,	-- 서비스 상세 구분 FK(system__service_action)

	phenomenon	VARCHAR(256),	-- 결함정보-현상
	cause_solution	TEXT,	-- 원인 및 대책

	center_id	BIGINT	NOT NULL,	-- 센터 FK

	PRIMARY KEY (retrofit_id),
	UNIQUE(sequence_id)
);	-- 리트로핏


CREATE TABLE prevention__retrofit_cost_item
(
	retrofit_cost_item_id	BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,	-- pk

	retrofit_id	BIGINT	NOT NULL,	-- BS FK

	item	VARCHAR(32)	NOT NULL,	-- 비목
	amount	NUMERIC(19, 4)	NOT NULL,	-- 금액

	PRIMARY KEY (retrofit_cost_item_id)
);	-- 리트로핏 비목


CREATE TABLE prevention__retrofit_file
(
	file_id	BIGINT	NOT NULL,	-- PK

	retrofit_id	BIGINT	NOT NULL,	-- 리트로핏 FK

	registerer_id	BIGINT,	-- 등록자 FK
	registerer	  VARCHAR(32),	-- 등록자명

	created_datetime			TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (file_id)
);	-- 리트로핏 첨부 파일


CREATE TABLE prevention__retrofit_asset
(
	retrofit_asset_id	BIGINT	GENERATED ALWAYS AS IDENTITY NOT NULL,	-- PK

	retrofit_id	BIGINT	NOT NULL,	-- 리트로핏 FK
	asset_id	  BIGINT	NOT NULL,	-- 자산 FK

	retrofit_processing_id	BIGINT,	-- 리트로핏 처리 FK

  is_rejected     BOOLEAN DEFAULT FALSE NOT NULL, -- 진행 불가 여부
	reject_reason	  VARCHAR(256),	-- 불가 사유

	PRIMARY KEY (retrofit_asset_id),
	UNIQUE (retrofit_id, asset_id)
);	-- 리트로핏 대상 설비


CREATE TABLE prevention__retrofit_processing
(
	retrofit_processing_id	BIGINT	GENERATED ALWAYS AS IDENTITY NOT NULL,	-- PK
	system_code VARCHAR(11) NOT NULL,   -- 시스템코드

	description	TEXT,	-- 처리내용

	file_id	          BIGINT,	        -- 파일 FK
	check_datetime		TIMESTAMPTZ(6),	-- 확인 일시

	PRIMARY KEY (retrofit_processing_id),
	UNIQUE (system_code)
);	-- 리트로핏 처리


CREATE TABLE prevention__retrofit_coordinator
(
	retrofit_coordinator_id	BIGINT	GENERATED ALWAYS AS IDENTITY NOT NULL,	-- PK

	retrofit_processing_id	BIGINT	NOT NULL,	-- 리트로핏 처리 FK
	user_id	                BIGINT	NOT NULL,	-- 사용자 FK

	PRIMARY KEY (retrofit_coordinator_id),
	UNIQUE (retrofit_processing_id, user_id)
);	-- 리트로핏 처리 담당자


CREATE TABLE prevention__retrofit_user
(
	retrofit_id	BIGINT	NOT NULL,	-- 리트로핏 PK
	user_id	    BIGINT	NOT NULL,	-- 사용자 PK

	PRIMARY KEY (retrofit_id, user_id)
);	-- 리트로핏 즐겨찾기


CREATE TABLE lookup__prevention_type
(
	prevention_type_id	SMALLINT GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 예방활동 타입 PK

	name				VARCHAR(16)	NOT NULL,	-- 유형(BS(BS), RETROFIT(리트로핏))
	label               VARCHAR(16),             -- LABEL

	PRIMARY KEY (prevention_type_id),
	UNIQUE (name)
);	-- 예방활동 타입

/* ==============================================================================================================
                                                DOMAIN : EDUCATION (교육)
================================================================================================================= */

/* 오프라인 */
CREATE TABLE education__offline_classroom_city
(
  offline_classroom_city_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 오프라인 교육도시 PK
  profit_center_id          SMALLINT                            NOT NULL, -- 사업부 FK
  name                      VARCHAR(50)                         NOT NULL, -- 교육도시 이름

  PRIMARY KEY (offline_classroom_city_id)
); -- 오프라인 교육장 교육도시

CREATE TABLE education__offline_classroom
(
  offline_classroom_id      BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 오프라인 교육장 PK
  offline_classroom_city_id BIGINT                              NOT NULL, -- 교육도시 FK
  name                      VARCHAR(50)                         NOT NULL, -- 교육장 이름
  address_id                BIGINT                              NOT NULL, -- 교육장 주소 FK
  inquiry_phone_country_id  SMALLINT                            NOT NULL, -- 문의 전화번호 국가 FK
  inquiry_phone_number      VARCHAR(32)                         NOT NULL, -- 문의 전화번호

  registerer_id             BIGINT,                                       -- 생성자 FK

  created_datetime			    TIMESTAMPTZ(6)	DEFAULT NOW()	      NOT NULL,	-- 생성일
	updated_datetime			    TIMESTAMPTZ(6)	DEFAULT NOW()	      NOT NULL,	-- 수정일
	deleted_datetime          TIMESTAMPTZ(6),                               -- 삭제일

	iv_data_encryption_key          VARCHAR(2048)                 NOT NULL,              -- IV값
  encrypted_data_encryption_key   VARCHAR(2048)                 NOT NULL,              -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

  PRIMARY KEY(offline_classroom_id)
); -- 오프라인 교육장

CREATE TABLE education__offline_classroom_manager
(
  offline_classroom_id BIGINT NOT NULL, -- 오프라인 교육장 FK
  manager_id           BIGINT NOT NULL, -- 담당자 FK

  PRIMARY KEY(offline_classroom_id, manager_id)
); -- 오프라인 교육장 담당자들

CREATE TABLE lookup__offline_class_open_status
(
  offline_class_open_status_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
  name                         VARCHAR(16)                               NOT NULL, -- 상태
  -- YET, OPEN, CLOSE
  -- 오픈전, 오픈, 마감
  label                        VARCHAR(32),

  PRIMARY KEY (offline_class_open_status_id)
); -- 오프라인 교육 신청 오픈 상태

CREATE TABLE education__offline_class
(
  offline_class_id             BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 오프라인 교육 PK
  offline_class_open_status_id SMALLINT                            NOT NULL, -- 신청 오픈 상태,
  name                         VARCHAR(50)                         NOT NULL, -- 교육과정명
  is_present                   BOOLEAN DEFAULT FALSE               NOT NULL, -- 노출여부
  start_datetime               TIMESTAMPTZ(6)                      NOT NULL, -- 교육시작일
  end_datetime                 TIMESTAMPTZ(6)                      NOT NULL, -- 교육종료일
  product_name                 VARCHAR(50)                         NOT NULL, -- 교육제품 이름
  target_audience              VARCHAR(50)                         NOT NULL, -- 교육대상
  max_personnel                SMALLINT                            NOT NULL, -- 최대 교육인원
  offline_classroom_id         BIGINT                              NOT NULL, -- 교육장 FK
  is_custom_image              BOOLEAN                             NOT NULL, -- 커스텀 이미지 사용유무
  file_id                      BIGINT,                             NOT NULL, -- 이미지 FK
  memo                         TEXT,                                         -- 비고

  registerer_id                BIGINT,                                       -- 생성자 FK

  created_datetime		         TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
	updated_datetime		         TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일
	deleted_datetime             TIMESTAMPTZ(6),                               -- 삭제일


  PRIMARY KEY (offline_class_id)
); -- 오프라인 교육

CREATE TABLE lookup__offline_audience_status
(
  offline_audience_status_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 오프라인 교육 신청상태 PK
  name                       VARCHAR(16)                             NOT NULL, -- 상태
  -- PENDING, APPROVE, RESIGN
  -- 승인대기,  승인,      거절
  label                      VARCHAR(32),                                      -- label

  PRIMARY KEY(offline_audience_status_id)
); -- 오프라인 교육 신청자 상태

CREATE TABLE education__offline_class_audience
(
  offline_audience_id        BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 오프라인 교육 신청자 PK
  offline_class_id           BIGINT                              NOT NULL, -- 오프라인 교육 FK
  offline_audience_status_id SMALLINT                            NOT NULL, -- 신청 상태 FK
  resign_reason              VARCHAR(256),                                 -- 거절 사유
  name                       VARCHAR(32)                         NOT NULL, -- 이름
  pii_email_address          VARCHAR(2048)                       NOT NULL, -- 이메일, 최소값은 21, 최대값은 270
  pii_email_address_lookup   VARCHAR(2048)                       NOT NULL, -- 이메일 HMAC값 HMAC-SHA512
  phone_country_id           SMALLINT                            NOT NULL, -- 연락처 국가 FK
  pii_phone_number           VARCHAR(2048)                       NOT NULL, -- 핸드폰 번호
  pii_phone_number_lookup    VARCHAR(2048)                       NOT NULL, -- 핸드폰 번호 HMAC값 HMAC-SHA512
  company_name               VARCHAR(64)                         NOT NULL, -- 회사(소속)
  department_name            VARCHAR(64)                         NOT NULL, -- 부서
  asset_name                 VARCHAR(64)
                      NOT NULL, -- 보유장비명
  asset_count                SMALLINT                            NOT NULL, -- 보우장비 수
  career_count               SMALLINT                            NOT NULL, -- 경력

  created_datetime		       TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL,	-- 생성일
	updated_datetime		       TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL,	-- 수정일
	deleted_datetime           TIMESTAMPTZ(6),                                -- 삭제일

  iv_data_encryption_key          VARCHAR(2048)  NOT NULL,               -- IV값
  encrypted_data_encryption_key   VARCHAR(2048)  NOT NULL,               -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

	PRIMARY KEY(offline_audience_id)

); -- 오프라인 교육 신청자

/* 온라인 */

CREATE TABLE education__online_class
(
  online_class_id  BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 온라인 교육 교육과정 PK
  profit_center_id SMALLINT                            NOT NULL, -- 사업부 FK
  name_ko          VARCHAR(128)                        NOT NULL, -- 교육과정명 ko
  name_en          VARCHAR(128)                        NOT NULL, -- 교육과정명 en
  name_cn          VARCHAR(128)                        NOT NULL, -- 교육과정명 cn


  registerer_id    BIGINT,                                       -- 등록자 FK

  created_datetime TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
	updated_datetime TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일
	deleted_datetime TIMESTAMPTZ(6),                               -- 삭제일
  PRIMARY KEY (online_class_id)
); -- 온라인 교육 교육과정

CREATE TABLE education__online_course
(
  online_course_id   BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 온라인 교육 코스 PK
  online_class_id    BIGINT                              NOT NULL, -- 온라인 교육 교육과정 FK

  release_of_scope_company_type_id SMALLINT              NOT NULL, -- 수강 가능 회사 타입

  use_ko             BOOLEAN DEFAULT FALSE               NOT NULL, -- 한국어 사용
  use_en             BOOLEAN DEFAULT FALSE               NOT NULL, -- 영어 사용
  use_cn             BOOLEAN DEFAULT FALSE               NOT NULL, -- 중국어 사용

  present_ko         BOOLEAN DEFAULT FALSE               NOT NULL, -- 한국어 노출
  present_en         BOOLEAN DEFAULT FALSE               NOT NULL, -- 영어 노출
  present_cn         BOOLEAN DEFAULT FALSE               NOT NULL, -- 중국어 노출

  name_ko            VARCHAR(128),                                 -- 코스명 ko
  name_en            VARCHAR(128),                                 -- 코스명 en
  name_cn            VARCHAR(128),                                 -- 코스명 cn

  description_ko     VARCHAR(128),                                 -- 간단소개 ko
  description_en     VARCHAR(128),                                 -- 간단소개 en
  description_cn     VARCHAR(128),                                 -- 간단소개 cn

  tag_ko             VARCHAR(256),                                 -- 태그 ko
  tag_en             VARCHAR(256),                                 -- 태그 en
  tag_cn             VARCHAR(256),                                 -- 태그 cn

  image_ko_id        BIGINT,                                       -- 썸네일 이미지 ko FK
  is_custom_image_ko BOOLEAN,                                      -- ko 커스텀 이미지 사용유무
  image_en_id        BIGINT,                                       -- 썸네일 이미지 en FK
  is_custom_image_en BOOLEAN,                                      -- en 커스텀 이미지 사용유무
  image_cn_id        BIGINT,                                       -- 썸네일 이미지 cn FK
  is_custom_image_cn BOOLEAN,                                      -- cn 커스텀 이미지 사용유무

  memo_ko            TEXT,                                         -- 비고 ko
  memo_en            TEXT,                                         -- 비고 en
  memo_cn            TEXT,                                         -- 비고 cn

  registerer_id      BIGINT,                                       -- 등록자 FK
  updater_id         BIGINT,                                       -- 수정자 FK

  is_use_curriculum  BOOLEAN        DEFAULT FALSE        NOT NULL, -- 커리큘럼 사용유무

  created_datetime   TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
	updated_datetime   TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일
	deleted_datetime   TIMESTAMPTZ(6),                               -- 삭제일

	PRIMARY KEY (online_course_id)
); -- 온라인 교육 코스

CREATE TABLE education__online_course_manager
(
  online_course_id BIGINT NOT NULL, -- 온라인 교육 코스 FK
  manager_id       BIGINT NOT NULL, -- 유저 FK

  PRIMARY KEY (online_course_id, manager_id)
); -- 온라인 교육 코스 담당자

CREATE TABLE education__online_course_attachment
(
  online_course_id BIGINT            NOT NULL, -- 온라인 교육 코스 FK
  file_id          BIGINT            NOT NULL, -- file FK
  language         VARCHAR(4)        NOT NULL, -- KO,EN,CN 구분자
  download_count   INTEGER DEFAULT 0 NOT NULL, -- 다운로드 수

  created_datetime   TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일

  PRIMARY KEY (online_course_id, file_id)
); -- 온라인 교육 코스 첨부파일



CREATE TABLE education__online_course_bookmark
(
  online_course_id BIGINT NOT NULL, -- 온라인 교육 코스 FK
  user_id          BIGINT NOT NULL, -- 찜한 유저 FK

  PRIMARY KEY (online_course_id, user_id)
); -- 온라인 교육 코스 찜


CREATE TABLE education__online_curriculum
(
  online_curriculum_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
  online_course_id     BIGINT                              NOT NULL, -- 코스 FK

  name_ko              VARCHAR(128),                                 -- 커리큘렴명 ko
  name_en              VARCHAR(128),                                 -- 커리큘렴명 en
  name_cn              VARCHAR(128),                                 -- 커리큘렴명 cn

  "order"              INTEGER        DEFAULT 0            NOT NULL, -- 순서

  registerer_id        BIGINT,                                       -- 등록자 FK

  is_default           BOOLEAN        DEFAULT TRUE         NOT NULL, -- 기본 커리큘럼인지

  created_datetime     TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
	updated_datetime     TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일
	deleted_datetime     TIMESTAMPTZ(6),                               -- 삭제일

  PRIMARY KEY (online_curriculum_id)
); -- 온라인 교육 커리큘럼

CREATE TABLE education__online_lesson
(
  online_lesson_id     BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
  online_curriculum_id BIGINT                              NOT NULL, -- 커리큘럼 PK

  name_ko              VARCHAR(128),                                 -- 커리큘렴명 ko
  name_en              VARCHAR(128),                                 -- 커리큘렴명 en
  name_cn              VARCHAR(128),                                 -- 커리큘렴명 cn

  memo_ko              TEXT,                                         -- 비고 ko
  memo_en              TEXT,                                         -- 비고 en
  memo_cn              TEXT,                                         -- 비고 cn

  "order"              INTEGER        DEFAULT 0            NOT NULL, -- 순서

  video_ko_id          BIGINT,                                       -- 동영상 ko FK
  video_ko_full_time   INTEGER,                                      -- 동영상 ko 총시간
  video_en_id          BIGINT,                                       -- 동영상 en FK
  video_en_full_time   INTEGER,                                      -- 동영상 en 총시간
  video_cn_id          BIGINT,                                       -- 동영상 cn FK
  video_cn_full_time   INTEGER,                                      -- 동영상 cn 총시간

  registerer_id        BIGINT,                                       -- 등록자 FK


  created_datetime     TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
	updated_datetime     TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일
	deleted_datetime     TIMESTAMPTZ(6),                               -- 삭제일

  PRIMARY KEY (online_lesson_id)
); -- 온라인 교육 강좌

CREATE TABLE education__online_course_applicant
(
  online_course_applicant_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
  online_course_id           BIGINT                              NOT NULL, -- 온라인 교육 코스 FK
  user_id                    BIGINT                              NOT NULL, -- 신청한 유저 FK
  applicant_datetime         TIMESTAMPTZ(6) DEFAULT NOW()        NOT NULL, -- 신청일
  completed_datetime         TIMESTAMPTZ(6),                               -- 수강 완료일

  file_id                    BIGINT,                                       -- 수료증 Fk

  UNIQUE (online_course_id, user_id),
  PRIMARY KEY (online_course_applicant_id)
); -- 유저가 신청한 강좌

CREATE TABLE education__online_complete_lesson
(
  online_course_applicant_id BIGINT         NOT NULL, -- 신청 강좌 FK
  online_lesson_id           BIGINT         NOT NULL, -- 강좌 FK
  completed_datetime         TIMESTAMPTZ(6) NOT NULL, -- 수강 완료일

  PRIMARY KEY (online_course_applicant_id, online_lesson_id)
); -- 수강 완료한 강좌

/* ==============================================================================================================
                                                DOMAIN : AFTERMARKET
================================================================================================================= */
CREATE TABLE lookup__performance_currency
(
    performance_currency_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                     VARCHAR(16)                               NOT NULL, -- enum
    -- USD, KRW, CNY, EUR, VND, JPY
    label                    VARCHAR(32),                                        -- label

    PRIMARY KEY (performance_currency_id)
); -- 실적 통화

CREATE TABLE lookup__performance_type
(
    performance_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                VARCHAR(32)                               NOT NULL, -- enum
    -- HW, SW, MODIFICATION, TECHNICAL-ROYALTY, ETC, ACCESSORY
    -- H/W, S/W, 개조, 기술료, 기타, 액세서리
    label               VARCHAR(32),                                        -- label

    PRIMARY KEY (performance_type_id)
); -- 실적 구분

CREATE TABLE lookup__po_status
(
    po_status_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name         VARCHAR(32)                               NOT NULL, -- enum
    -- PENDING, RECEIVED, NOT_RECEIVED
    -- 대기,수령,미수령
    label        VARCHAR(32),                                        -- label

    PRIMARY KEY (po_status_id)
); -- po status



CREATE TABLE aftermarket__performance
(
    performance_id          BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
    system_code             VARCHAR(32)                         NOT NULL, -- systemCode
    title                   VARCHAR(256)                        NOT NULL, -- 실적명
    client_id               BIGINT,                                       -- 고객사 FK
    performance_currency_id SMALLINT                            NOT NULL, -- 통화 FK
    performance_type_id     SMALLINT                            NOT NULL, -- 실적 구분 FK
    po_status_id            SMALLINT                            NOT NULL, -- PO 상태
    profit_center_id        SMALLINT                            NOT NULL, -- 사업부
    memo                    TEXT,                                         -- 비고

    registerer_id           BIGINT                              NOT NULL, -- 등록자 (화면에 담당자에 해당 워딩만 담당자 인거고 그냥 실적을 생성한 사람임)

    issued_datetime         TIMESTAMPTZ(6)    DEFAULT NOW()     NOT NULL, -- 발행일자

    created_datetime        TIMESTAMPTZ(6)	DEFAULT NOW()	    NOT NULL, -- 생성일
	  updated_datetime        TIMESTAMPTZ(6)	DEFAULT NOW()	    NOT NULL, -- 수정일
	  deleted_datetime        TIMESTAMPTZ(6),                             -- 삭제일
  PRIMARY KEY (performance_id)
); -- 실적

CREATE TABLE aftermarket__performance_attachment
(
  performance_id    BIGINT                         NOT NULL, -- 실적 FK
  file_id           BIGINT                         NOT NULL, -- file FK

  registerer_id     BIGINT                           NOT NULL, -- 등록자
  created_datetime  TIMESTAMPTZ(6)	DEFAULT NOW()	 NOT NULL, -- 생성일

  PRIMARY KEY (performance_id, file_id)
); -- 실적 첨부파일

Create TABLE aftermarket__performance_sales_order
(
    performance_sales_order_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
    performance_id             BIGINT                              NOT NULL, -- 실적 FK
    sales_order_id             BIGINT,                                       -- salesOrder FK

    sales_order_system_code    VARCHAR(64),                                  -- 작성한 sale_order systemCode (sales_order랑 매핑이 안됐을 경우 존재함)

    has_billing                BOOLEAN DEFAULT FALSE               NOT NULL, -- 계산서 발행 유무
    checked_payment            BOOLEAN DEFAULT FALSE               NOT NULL, -- 입금 확인 유무
    created_datetime           TIMESTAMPTZ(6)  DEFAULT NOW()	   NOT NULL, -- 생성일
    PRIMARY KEY (performance_sales_order_id)
); -- 실적 세일즈 오더

CREATE TABLE lookup__quote_record_ref_type
(
    quote_record_ref_type_id  SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 참조테이블 PK
    name                      VARCHAR(16)                               NOT NULL, -- 참조테이블
    -- PERFORMANCE , SERVICE-ORDER
    -- 실적,          서비스 주문
    label                     VARCHAR(32),                                        -- label
    -- aftermarket__performance, -- service__service_order
    PRIMARY KEY (quote_record_ref_type_id)
); -- 견적서 참조 테이블

CREATE TABLE aftermarket__quote_record
(
    quote_record_id          BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
    system_code              VARCHAR(32)                         NOT NULL, -- systemCode

    version                  INTEGER         DEFAULT 1           NOT NULL, -- 버전

    quote_record_ref_type_id SMALLINT                            NOT NULL, -- 참조 테이블
    reference_id             BIGINT,                                       -- 실적의 견적서냐 서비스 주문에 따른 견적서냐에 따라 해당 table의 FK가 걸림 실질적으로 FK 안걸음
    performance_currency_id  SMALLINT,                                     -- 통화 FK
    title                    VARCHAR(128)                        NOT NULL, -- 견적명,
    consignee                VARCHAR(64)                         NOT NULL, -- 수신인

    delivery_date            TEXT,                                         -- 납기
    payment_terms            TEXT,                                         -- 지급 조건
    incoterms                TEXT,                                         -- 인코 텀즈
    delivery_location        TEXT,                                         -- 인도 장소
    product_warranty         TEXT,                                         -- 제품 보증
    quote_validity           TEXT,                                         -- 견적 유효기간

    quote_scope              TEXT,                                         -- 견적 유효 범위
    etc                      TEXT,                                         -- 기타

    registerer_id            BIGINT,                                       -- 등록자 FK

    quoted_datetime          TIMESTAMPTZ(6)  DEFAULT NOW()    NOT NULL,    -- 견적일자
    created_datetime         TIMESTAMPTZ(6)  DEFAULT NOW()	   NOT NULL,   -- 생성일
	updated_datetime         TIMESTAMPTZ(6)  DEFAULT NOW()	   NOT NULL,   -- 수정일
	deleted_datetime         TIMESTAMPTZ(6),                               -- 삭제일

  PRIMARY KEY (quote_record_id)
); -- 견적서

CREATE TABLE aftermarket__quote_record_product
(
    quote_record_product_id   BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
    quote_record_id           BIGINT                              NOT NULL, -- 견적서 FK
    product_id                BIGINT,                                       -- product FK

    entered_name              VARCHAR(64),                                  -- 입력한 제품명 (직접 입력일경우 생성)
    entered_system_code       VARCHAR(64),                                  -- 입력한 제품 systemCode (직접 입력일경우 생성)

    quantity                  INTEGER                             NOT NULL, -- 수량
    unit                      VARCHAR(32)                         NOT NULL, -- 단위
    unit_price                NUMERIC(12,2)                       NOT NULL, -- 단가
    total_price               NUMERIC(12,2)                       NOT NULL, -- 합계
    final_supply_price        NUMERIC(12,2)                       NOT NULL, -- 최종 공급가
    memo                      TEXT,                                         -- 비고

    "order"                   INTEGER                             NOT NULL, -- 순서

    created_datetime          TIMESTAMPTZ(6)	DEFAULT NOW()	  NOT NULL, -- 생성일
	  updated_datetime          TIMESTAMPTZ(6)	DEFAULT NOW()	  NOT NULL, -- 수정일
	  deleted_datetime          TIMESTAMPTZ(6),                           -- 삭제일

  PRIMARY KEY (quote_record_product_id)
); -- 견적서 PRODUCT



/* ==============================================================================================================
                                                DOMAIN : BOARD (뉴스센터)
================================================================================================================= */

CREATE TABLE board__notice_category
(
    notice_category_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 공지사항 카테고리 PK

    name_ko            VARCHAR(128) NOT NULL,                        -- 카테고리명 ko
    name_en            VARCHAR(128) NOT NULL,                        -- 카테고리명 en
    name_cn            VARCHAR(128) NOT NULL,                        -- 카테고리명 cn

    created_datetime   TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 생성일
 	  updated_datetime   TIMESTAMPTZ(6)	DEFAULT NOW()	       NOT NULL, -- 수정일

    PRIMARY KEY (notice_category_id)
); -- 공지사항 카테고리

CREATE TABLE board__notice
(
    notice_id   BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 공지사항 PK

    category_id                      BIGINT         NOT NULL, -- 카테고리 FK
    profit_center_id                 SMALLINT       NOT NULL, -- 사업부 FK
    registerer_id                    BIGINT         NOT NULL, -- 최초 작성자 FK
    updater_id                       BIGINT,                  -- 최종 수정자 FK
    release_of_scope_company_type_id SMALLINT       NOT NULL, -- 열람권한 FK

    title_ko                         VARCHAR(128),            -- 공지사항 제목 ko
    title_en                         VARCHAR(128),            -- 공지사항 제목 en
    title_cn                         VARCHAR(128),            -- 공지사항 제목 cn
    content_ko                       TEXT,                    -- 내용 ko
    content_en                       TEXT,                    -- 내용 en
    content_cn                       TEXT,                    -- 내용 cn
    is_pinned                        BOOLEAN DEFAULT FALSE NOT NULL, -- 상단 고정 여부
    view_count                       INTEGER DEFAULT 0     NOT NULL, -- 조회수

    document_system_code             VARCHAR(64),    -- 공지사항 결재 코드
    signed_datetime                  TIMESTAMPTZ(6), -- 결재 승인 일시
    un_signed_datetime               TIMESTAMPTZ(6), -- 결재 반려 일시

    start_datetime       TIMESTAMPTZ(6), -- 게시 시작일
    end_datetime         TIMESTAMPTZ(6), -- 게시 종료일
    created_datetime     TIMESTAMPTZ(6)	DEFAULT NOW() NOT NULL, -- 생성일
	  updated_datetime     TIMESTAMPTZ(6)	DEFAULT NOW() NOT NULL, -- 수정일

    PRIMARY KEY (notice_id)
); -- 공지사항

CREATE TABLE board__notice_attachment
(
    notice_id        BIGINT     NOT NULL, -- 공지사항 FK
    file_id          BIGINT     NOT NULL, -- file FK

    language         VARCHAR(4) NOT NULL, -- KO,EN,CN 구분자

    PRIMARY KEY (notice_id, file_id)
); -- 공지사항 첨부파일

CREATE TABLE board__notice_model
(
    notice_id   BIGINT NOT NULL, -- 공지사항 FK
    model_id    BIGINT NOT NULL, -- 모델 FK

    PRIMARY KEY (notice_id, model_id)
); -- 공지사항 태그(모델)

CREATE TABLE board__notice_detail_log
(
    notice_detail_log_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 공지사항 상세 조회 이력 PK

    notice_id                       BIGINT NOT NULL,        -- 공지사항 FK
    viewer_id                       BIGINT,                 -- 유입한 CRM 유저 FK

    viewer_name_local               VARCHAR(32),            -- CRM 유저 이름(원문) denorm
    viewer_name_en                  VARCHAR(64),            -- CRM 유저 이름(영문) denorm
    pii_viewer_email_address        VARCHAR(2048),          -- 유입한 비회원 이메일 주소
    pii_viewer_email_address_lookup VARCHAR(2048),          -- 유입한 비회원 이메일 주소 HMAC값 HMAC-SHA512
    iv_data_encryption_key          VARCHAR(2048),          -- IV값
    encrypted_data_encryption_key   VARCHAR(2048),          -- 암호화된 DEK값, 184 고정이다. AES-GCM-256
    search_keywords                 VARCHAR(2048),          -- 유입 검색어들(CSV형식)

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일(조회일시)

    PRIMARY KEY (notice_detail_log_id)
); -- 공지사항 상세 조회 이력

CREATE TABLE board__notice_comment
(
    notice_comment_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 댓글 PK

    notice_id           BIGINT NOT NULL, -- 공지사항 FK
    registerer_id       BIGINT NOT NULL, -- 작성자 FK
    parent_id           BIGINT,          -- 루트 댓글 FK
    mention_id          BIGINT,          -- 언급 대상 댓글 FK

    content             VARCHAR(300) NOT NULL, -- 내용

    created_datetime    TIMESTAMPTZ(6)	DEFAULT NOW() NOT NULL, -- 생성일
    updated_datetime    TIMESTAMPTZ(6)	DEFAULT NOW() NOT NULL, -- 수정일
    deleted_datetime    TIMESTAMPTZ(6), -- 삭제일

    PRIMARY KEY (notice_comment_id)
); -- 공지사항 댓글

CREATE TABLE board__notice_comment_attachment
(
    comment_id       BIGINT NOT NULL, -- 댓글 FK
    file_id          BIGINT NOT NULL, -- file FK

    PRIMARY KEY (comment_id, file_id)
); -- 공지사항 댓글 첨부파일

CREATE TABLE lookup__archive_category
(
    archive_category_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 자료실/기술자료실 구분 PK
    name                VARCHAR(8) NOT NULL, -- GENERAL, TECH(자료실, 기술자료실)
    label               VARCHAR(8),
    PRIMARY KEY (archive_category_id)
); -- 자료실/기술자료실 구분(이하 자료실로 통칭한다.)

CREATE TABLE lookup__archive_type
(
    archive_type_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 자료실 자료 유형 PK
    name            VARCHAR(16) NOT NULL,
    -- 자료실: MANUAL, SOFTWARE, RECOVERY, FIRMWARE (매뉴얼, 소프트웨어, 리커버리, 펌웨어)
    -- 기술 자료실: MATERIALS, TECHNICIAN, FEATURES (서비스 자재, 서비스 기술, 소프트웨어 기능)
    label           VARCHAR(16),

    archive_category_id     SMALLINT NOT NULL, -- 자료실/기술자료실 구분 FK
    PRIMARY KEY (archive_type_id)
); -- 자료실 자료 유형

CREATE TABLE board__archive
(
    archive_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 자료실 게시글 PK

    archive_type_id                  SMALLINT NOT NULL, -- 자료유형 FK
    profit_center_id                 SMALLINT NOT NULL, -- 사업부 FK
    registerer_id                    BIGINT   NOT NULL, -- 작성자 FK
    updater_id                       BIGINT,            -- 변경자 FK
    release_of_scope_company_type_id SMALLINT NOT NULL, -- 열람권한 FK

    group_code          VARCHAR(64) NOT NULL, -- 그룹코드(새버전추가로 생성된 게시글끼리 같은 그룹코드를 가진다. 버전설정 안한 게시글고 그룹코드가 부여된다.)
    version             NUMERIC(12,2),        -- 버전
    is_latest           BOOLEAN,              -- 최신 버전 여부
    changes_ko          VARCHAR(300),         -- 버전 업그레이드될 때 변경사항 ko
    changes_en          VARCHAR(300),         -- 버전 업그레이드될 때 변경사항 en
    changes_cn          VARCHAR(300),         -- 버전 업그레이드될 때 변경사항 cn

    is_ko_present       BOOLEAN DEFAULT FALSE NOT NULL, -- 노출여부 ko
    is_en_present       BOOLEAN DEFAULT FALSE NOT NULL, -- 노출여부 en
    is_cn_present       BOOLEAN DEFAULT FALSE NOT NULL, -- 노출여부 cn
    title_ko            VARCHAR(100),                   -- 자료실 제목 ko
    title_en            VARCHAR(100),                   -- 자료실 제목 en
    title_cn            VARCHAR(100),                   -- 자료실 제목 cn
    content_ko          TEXT,                           -- 내용 ko
    content_en          TEXT,                           -- 내용 en
    content_cn          TEXT,                           -- 내용 cn
    tag_ko              VARCHAR(256),                   -- 태그 ko(CSV형식)
    tag_en              VARCHAR(256),                   -- 태그 en(CSV형식)
    tag_cn              VARCHAR(256),                   -- 태그 cn(CSV형식)
    web_manual_url      VARCHAR(2048),                  -- 웹 매뉴얼 url
    view_count          INTEGER DEFAULT 0 NOT NULL,     -- 조회수

    document_system_code            VARCHAR(64),    -- 자료실 결재 코드
    signed_datetime                 TIMESTAMPTZ(6), -- 결재 승인 일시
    un_signed_datetime              TIMESTAMPTZ(6), -- 결재 반려 일시

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    updated_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 수정일

    PRIMARY KEY (archive_id)
); -- 자료실 게시글

CREATE TABLE board__archive_model
(
    archive_id BIGINT NOT NULL, -- 자료실 FK
    model_id   BIGINT NOT NULL, -- model FK

    PRIMARY KEY (archive_id, model_id)
); -- 자료실 모델

CREATE TABLE board__archive_product
(
    archive_id BIGINT NOT NULL, -- 자료실 FK
    product_id   BIGINT NOT NULL, -- product FK

    PRIMARY KEY (archive_id, product_id)
); -- 자료실 관련 부품

CREATE TABLE board__archive_attachment
(
    archive_id BIGINT NOT NULL, -- 자료실 FK
    file_id    BIGINT NOT NULL, -- file FK

    language VARCHAR(4) NOT NULL, -- KO,EN,CN 구분자
    indexing TEXT       NOT NULL, -- pdf파일에 있는 텍스트 추출(통합검색용)

    PRIMARY KEY (archive_id, file_id)
); -- 자료실 첨부파일

CREATE TABLE board__archive_detail_log
(
    archive_detail_log_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 자료실 조회 이력 PK

    archive_id                      BIGINT NOT NULL,        -- 자료실 FK
    viewer_id                       BIGINT,                 -- 유입한 CRM 유저 FK

    viewer_name_local               VARCHAR(32),            -- CRM 유저 이름(원문) denorm
    viewer_name_en                  VARCHAR(64),            -- CRM 유저 이름(영문) denorm
    pii_viewer_email_address        VARCHAR(2048),          -- 유입한 비회원 이메일 주소
    pii_viewer_email_address_lookup VARCHAR(2048),          -- 유입한 비회원 이메일 주소 HMAC값 HMAC-SHA512
    iv_data_encryption_key          VARCHAR(2048),          -- IV값
    encrypted_data_encryption_key   VARCHAR(2048),          -- 암호화된 DEK값, 184 고정이다. AES-GCM-256
    search_keywords                 VARCHAR(2048),          -- 유입 검색어들(CSV형식)

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일(조회일시)

    PRIMARY KEY (archive_detail_log_id)
); -- 자료실 조회 이력

CREATE TABLE board__archive_attachment_download_log
(
    archive_attachment_download_log_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 자료실 첨부파일 다운로드 이 PK

    archive_id                      BIGINT NOT NULL, -- 자료실 FK
    file_id                         BIGINT,          -- 자료실 첨부파일 FK
    downloader_id                   BIGINT,          -- 다운로드 받은 CRM 유저 FK

    downloader_name_local           VARCHAR(32),     -- CRM 유저 이름(원문) denorm
    downloader_name_en              VARCHAR(64),     -- CRM 유저 이름(영문) denorm
    pii_email_address               VARCHAR(2048),   -- 다운로드 받은 비회원 이메일 주소
    pii_email_address_lookup        VARCHAR(2048),   -- 다운로드 받은 비회원 이메일 주소 HMAC값 HMAC-SHA512
    iv_data_encryption_key          VARCHAR(2048),   -- IV값
    encrypted_data_encryption_key   VARCHAR(2048),   -- 암호화된 DEK값, 184 고정이다. AES-GCM-256
    filename                        VARCHAR(1024),   -- 다운로드 받은 자료실 첨부파일

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일(다운일시)

    PRIMARY KEY (archive_attachment_download_log_id)
); -- 자료실 첨부파일 다운로드 이력

CREATE TABLE board__archive_bookmark
(
    archive_id BIGINT NOT NULL, -- 자료실 FK
    user_id    BIGINT NOT NULL, -- 찜한 유저 FK

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일(찜일시)

    PRIMARY KEY (archive_id, user_id)
); -- 자료실 북마크

CREATE TABLE board__archive_comment
(
    archive_comment_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- 자료실 댓글 PK

    archive_id        BIGINT NOT NULL, -- 자료실 FK
    registerer_id     BIGINT NOT NULL, -- 작성자 FK
    parent_id         BIGINT, -- 루트 댓글 FK
    mention_id        BIGINT, -- 언급 대상 댓글 FK

    content           VARCHAR(300) NOT NULL, -- 내용

    created_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    updated_datetime  TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 수정일
    deleted_datetime  TIMESTAMPTZ(6), -- 삭제일

    PRIMARY KEY (archive_comment_id)
); -- 자료실 댓글

CREATE TABLE board__archive_comment_attachment
(
    comment_id BIGINT NOT NULL, -- 댓글 FK
    file_id    BIGINT NOT NULL, -- file FK
    PRIMARY KEY (comment_id, file_id)
); -- 자료실 댓글 첨부파일



/* ==============================================================================================================
                                                DOMAIN : DEMO
================================================================================================================= */

CREATE TABLE demo__demo
(
    demo_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK
    system_code VARCHAR(17) NOT NULL, -- DEMO-yyyyMMddRRRR

    title VARCHAR(32) NOT NULL, -- 제목
    content TEXT, -- 컨텐트 wysiwyg

    client_id BIGINT NOT NULL, -- 고객사 FK
    client_address_id BIGINT NOT NULL, -- 고객사 주소 FK
    company_id BIGINT NOT NULL, -- 생성센터
    base_timezone_id SMALLINT NOT NULL, -- 시간대

    registerer_id BIGINT NOT NULL, -- 생성자
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일
    updater_id BIGINT, -- 변경자
    updated_datetime TIMESTAMPTZ(6) DEFAULT NOW()  NOT NULL, -- 변경일
    canceled_datetime TIMESTAMPTZ(6), -- 취소일

    is_line_confirmed BOOLEAN DEFAULT FALSE NOT NULL, -- 라인(레이아웃) 확정여부
    is_workgroup_confirmed BOOLEAN DEFAULT FALSE NOT NULL, -- 작업조 확정여부

    PRIMARY KEY (demo_id)
); -- 데모

CREATE TABLE demo__demo_schedule
(
    demo_schedule_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK

    title VARCHAR(32) NOT NULL, -- 활동명
    start_datetime TIMESTAMPTZ(6) NOT NULL, -- 시작일
    end_datetime TIMESTAMPTZ(6) NOT NULL, --종료일
    remark VARCHAR(64), -- 비고

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (demo_schedule_id)
); -- 데모 일정

CREATE TABLE demo__demo_manager
(
    demo_manager_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK
    user_id BIGINT, -- user FK, CRM사용자가 아닌 애도 등록할 수 있어서 NULLBALE

    name VARCHAR(32) NOT NULL, -- 이름
    company VARCHAR(64) NOT NULL, -- 회사명
    department VARCHAR(32), -- 부서명
    pii_email_address VARCHAR(2048), -- 이메일
    pii_phone_number VARCHAR(2048), -- 휴대폰 번호
    phone_country_id SMALLINT, -- 휴대폰 국가 코드
    position VARCHAR(32), -- 직급
    start_date CHAR(10), -- 시작일
    end_date CHAR(10), -- 종료일
    duties VARCHAR(16), -- 담당업무
    remark VARCHAR(64), -- 비고

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    iv_data_encryption_key VARCHAR(2048) NOT NULL, -- IV
    encrypted_data_encryption_key VARCHAR(2048) NOT NULL, -- DEK

    PRIMARY KEY (demo_manager_id)
); -- 데모 담당자

CREATE TABLE demo__demo_attachment
(
    demo_id BIGINT NOT NULL, -- demo FK
    file_id BIGINT NOT NULL, -- file FK

    PRIMARY KEY (demo_id, file_id)
); -- 데모 첨부파일

CREATE TABLE demo__demo_evaluation_target
(
    demo_evaluation_target_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK
    demo_evaluation_target_type_id SMALLINT NOT NULL, -- 평가대상 유형 FK
    asset_id BIGINT, -- 설비 FK
    model_id BIGINT, -- 모델 FK

    remark VARCHAR(64), -- 비고
    is_summary BOOLEAN DEFAULT FALSE NOT NULL, -- 집계여부, 모델의 경우 default false

    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (demo_evaluation_target_id)
); -- 데모 평가대상

CREATE TABLE demo__demo_line
(
    demo_line_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK

    name VARCHAR(32) NOT NULL, -- 라인명
    softwares VARCHAR(512), -- 라인 소프트웨어 CSV

    PRIMARY KEY (demo_line_id)
); -- 데모 라인 (layout)

CREATE TABLE demo__demo_line_item
(
    demo_line_item_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_line_id BIGINT NOT NULL, -- demo line FK
    demo_evaluation_target_id BIGINT, -- 평가대상 FK, 없을 수 있음
    model_name VARCHAR(16) NOT NULL, -- 모델명
    remark VARCHAR(16), -- 비고
    unit_number VARCHAR(35), -- 호기

    "order" SMALLINT NOT NULL, -- 순서

    PRIMARY KEY (demo_line_item_id),
    UNIQUE(demo_evaluation_target_id)
); -- 데모 라인 아이템

CREATE TABLE demo__demo_evaluation_target_software
(
    demo_evaluation_target_software_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_evaluation_target_id BIGINT NOT NULL, -- 평가대상 FK
    demo_evaluation_target_software_classification_id SMALLINT NOT NULL, -- 평가대상 SW 분류

    module VARCHAR(16) NOT NULL, -- 모듈
    remark VARCHAR(32), -- 비고

    PRIMARY KEY (demo_evaluation_target_software_id),
    UNIQUE(module, demo_evaluation_target_id)
); -- 데모 평가대상 SW

CREATE TABLE demo__demo_evaluation_target_software_version
(
    demo_evaluation_target_software_version_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_evaluation_target_software_id BIGINT NOT NULL, -- 평가대상 SW FK

    version VARCHAR(16) NOT NULL, -- 버전
    update_date DATE NOT NULL, -- 변경일
    updater VARCHAR(32), -- 변경자

    PRIMARY KEY (demo_evaluation_target_software_version_id),
    UNIQUE(demo_evaluation_target_software_id, version)
); -- 데모 평가대상 SW 버전

CREATE TABLE demo__demo_pcb
(
    demo_pcb_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id  BIGINT NOT NULL, -- demo FK
    image_id BIGINT, -- 이미지 FK

    name        VARCHAR(32) NOT NULL, -- 이름
    item        VARCHAR(32), -- 아이템
    side        VARCHAR(32), -- 사이드
    width       NUMERIC(8,2), -- 가로
    "length"    NUMERIC(8,2), -- 세로
    array_count INTEGER, -- Array 수
    part_count  INTEGER, -- Part 수

    production_date DATE, -- 생산일자, 작업조 생산물종 등록시 생김

    PRIMARY KEY (demo_pcb_id)
); -- 데모 생산물종(PCB)

CREATE TABLE demo__demo_pcb_item
(
    demo_pcb_item_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_pcb_id BIGINT NOT NULL, -- pcb FK
    demo_line_item_id BIGINT NOT NULL, -- line item FK
    demo_pcb_item_type VARCHAR(4) NOT NULL, -- pcb item 생산모드

    piece INTEGER, -- 점
    remark VARCHAR(64), -- 비고
    simulated_CT NUMERIC(8,2), -- simulated C/T
    mimi_CT NUMERIC(8,2), -- mimi C/T

    PRIMARY KEY (demo_pcb_item_id)
); -- 데모 생산물종(PCB) 아이템

CREATE TABLE demo__demo_workgroup
(
    demo_workgroup_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK

    name VARCHAR(16) NOT NULL, -- 이름
    remark VARCHAR(64), -- 비고
    start_time TIME NOT NULL, -- 시작시간
    end_time TIME NOT NULL, -- 종료시간
    "order" SMALLINT NOT NULL, -- 순서

    registerer_id BIGINT NOT NULL, -- 생성자
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (demo_workgroup_id)
); -- 데모 작업조

CREATE TABLE demo__demo_workgroup_schedule
(
    demo_workgroup_schedule_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_workgroup_id BIGINT NOT NULL, -- 작업조 FK

    start_time TIME NOT NULL, -- 시작시간
    end_time TIME NOT NULL, -- 종료시간

    work_datetime TIMESTAMPTZ(6) NOT NULL,  -- 작업일

    PRIMARY KEY (demo_workgroup_schedule_id)
); -- 데모 작업조 일정 (1시간단위로 쪼갠 데이터) ex) 작업조 1의 일정이 00 ~ 08 일 때 여기에 00~01, 01~02 이런식으로 들어간다

CREATE TABLE demo__demo_workgroup_schedule_item
(
    demo_workgroup_schedule_item_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_workgroup_schedule_id BIGINT NOT NULL, -- 작업조 일정 FK
    demo_pcb_id BIGINT NOT NULL, -- 생산물종(PCB)

    start_time TIME NOT NULL, -- 시작시간
    end_time TIME NOT NULL, -- 종료시간
    array_front INTEGER NOT NULL, -- Array Front
    array_rear INTEGER NOT NULL, -- Array Rear
    array_defect INTEGER NOT NULL, -- 불량 수 (Array)
    piece_defect INTEGER NOT NULL, -- 불량 수 (점)
    loss_time SMALLINT, -- 지속시간(분)
    demo_workgroup_schedule_reason_type_id SMALLINT, -- 사유 유형 FK
    remark VARCHAR(64), -- 비고

    PRIMARY KEY (demo_workgroup_schedule_item_id)
); -- 데모 작업조 일정 세부정보

CREATE TABLE demo__demo_workgroup_output
(
    demo_workgroup_output_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_workgroup_id BIGINT NOT NULL, -- 작업조 FK
    demo_pcb_id BIGINT NOT NULL, -- 물종(PCB) FK

    PRIMARY KEY (demo_workgroup_output_id)
); -- 데모 작업조 생산 물종

CREATE TABLE demo__demo_workgroup_output_item
(
    demo_workgroup_output_item_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_workgroup_output_id BIGINT NOT NULL, -- 작업조 생산물종 FK
    demo_line_item_id BIGINT NOT NULL, -- line item FK

    pick_up_count SMALLINT, -- 픽업 수량
    dump_count SMALLINT, -- 덤프 수량

    PRIMARY KEY (demo_workgroup_output_item_id)
); -- 데모 작업조 생산 물종 - 라인 아이템

CREATE TABLE demo__demo_issue
(
    demo_issue_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK
    demo_issue_classification_id SMALLINT NOT NULL, -- 분류
    demo_evaluation_target_id BIGINT, -- S/N 평가대상 FK
    model_id BIGINT, -- 구분 모델 FK, 전체거나 기타의 경우에는 NULL
    demo_issue_improvement_type_id SMALLINT, -- 개선현황 FK

    issue_datetime TIMESTAMPTZ(6) NOT NULL, -- 발생일
    manager VARCHAR(32), -- 담당자
    detector VARCHAR(32), -- 검출자
    expect_complete_datetime TIMESTAMPTZ(6) NOT NULL, -- 완료예정일
    is_temporary BOOLEAN NOT NULL, -- 임시조치
    is_field BOOLEAN, -- 현장적용 NULL이면 없음 TRUE면 적용 FALSE면 대기
    is_fundamental BOOLEAN NOT NULL, -- 근본대책
    version VARCHAR(32), -- 적용버전
    improvement_manager VARCHAR(32), -- 개선담당
    plm_no VARCHAR(32), -- PLM No.
    content TEXT, -- content wysiwyg
    important CHAR(1) NOT NULL, -- 중요도 (A, B, C)
    is_all BOOLEAN, -- 구분 (NULL이면 평가대상, TRUE면 전체, FALSE면 기타)

    PRIMARY KEY (demo_issue_id)
); -- 데모 이슈

CREATE TABLE demo__demo_report
(
    demo_report_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK

    report_date DATE NOT NULL, -- 리포트 일자
    content TEXT NOT NULL, -- content wysiwyg

    registerer_id BIGINT NOT NULL, -- 생성자
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (demo_report_id),
    UNIQUE(report_date)
); -- 데모 리포트

CREATE TABLE demo__demo_report_attachment
(
    demo_report_id BIGINT NOT NULL, -- demo report FK
    file_id BIGINT NOT NULL, -- file FK

    PRIMARY KEY (demo_report_id, file_id)
); -- 데모 리포트 첨부파일

CREATE TABLE demo__demo_report_receiver
(
    demo_report_receiver_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_id BIGINT NOT NULL, -- demo FK

    name              VARCHAR(32) NOT NULL, -- 이름
    position          VARCHAR(32), -- 직급
    pii_email_address VARCHAR(2048) NOT NULL, -- 이메일
    pii_email_address_lookup VARCHAR(2048) NOT NULL, -- 이메일 HMAC값 HMAC-SHA512
    remark            VARCHAR(64), -- 비고

    iv_data_encryption_key VARCHAR(2048) NOT NULL, -- IV
    encrypted_data_encryption_key VARCHAR(2048) NOT NULL, -- DEK

    registerer_id	BIGINT NOT NULL,
    created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일

    PRIMARY KEY (demo_report_receiver_id),
); -- 데모 리포트 발송 대상

CREATE TABLE demo__demo_report_email_log
(
    demo_report_email_log_id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- PK

    demo_report_id BIGINT NOT NULL, -- 데모 리포트 FK
    demo_report_receiver_id BIGINT NOT NULL, -- 발송 대상 FK
    sender_id BIGINT NOT NULL, -- 발송자

    is_success BOOLEAN NOT NULL, -- 성공여부
    created_datetime TIMESTAMPTZ(6) DEFAULT NOW() NOT NULL, -- 생성일

    PRIMARY KEY (demo_report_email_log_id)
); -- 데모 리포트 발송 로그

CREATE TABLE lookup__demo_evaluation_target_software_classification
(
    demo_evaluation_target_software_classification_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32) NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (demo_evaluation_target_software_classification_id)
); -- 데모 평가대상 SW 분류

CREATE TABLE lookup__demo_evaluation_target_type
(
    demo_evaluation_target_type_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (demo_evaluation_target_type_id)
); -- 데모 평가대상 유형

CREATE TABLE lookup__demo_workgroup_schedule_reason_type
(
    demo_workgroup_schedule_reason_type_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (demo_workgroup_schedule_reason_type_id)
); -- 데모 작업조 일정 사유 유형

CREATE TABLE lookup__demo_issue_classification
(
    demo_issue_classification_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (demo_issue_classification_id)
); -- 데모 이슈 분류

CREATE TABLE lookup__demo_issue_improvement_type
(
    demo_issue_improvement_type_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (demo_issue_improvement_type_id)
); -- 데모 이슈 개선현황


/* ==============================================================================================================
                                                DOMAIN : SUPPORT
================================================================================================================= */

CREATE TABLE support__question
(
	question_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 질문 pk

	system_code	VARCHAR(11)	NOT NULL,	-- 시스템코드

	question_type_id	SMALLINT	NOT NULL,	-- 문의 유형 fk

	title	VARCHAR(512)	NOT NULL,	-- 제목
	description	TEXT	NOT NULL,	-- 내용

	is_guest	BOOLEAN	DEFAULT FALSE	NOT NULL,	-- 비회원 작성 여부

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	updater_id	BIGINT,	-- 변경자 fk
	updater	VARCHAR(32),	-- 변경자명

	registerer_phone_country_id	SMALLINT,	-- 작성자 핸드폰번호 국가코드
	registerer_pii_phone_number	VARCHAR(2048),	-- 작성자 핸드폰번호
	registerer_pii_email_address	VARCHAR(2048),	-- 작성자 이메일주소

	iv_data_encryption_key VARCHAR(2048), -- IV
    encrypted_data_encryption_key VARCHAR(2048), -- DEK

    center_id	BIGINT	NOT NULL,	-- 담당센터 fk

	offline_class_id	BIGINT,	-- 교육과정 fk
	online_course_id	BIGINT,	-- 온라인 교육 코스 fk
	model_id	BIGINT,	-- 모델 fk
	asset_id	BIGINT,	-- 자산 fk
	product_id	BIGINT,	-- 제품/부품 fk

	end_datetime	TIMESTAMPTZ(6),	-- 종결일시

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (question_id),
	UNIQUE (system_code)
);	--Q&A 질문





CREATE TABLE lookup__question_type
(
	question_type_id	SMALLINT	GENERATED	BY DEFAULT	AS IDENTITY NOT NULL,	-- Q&A 질문 유형 pk

	name	VARCHAR(32)	NOT NULL,	-- 유형(TECHNICAL-SUPPORT, OFFLINE-EDUCATION, ONLINE-EDUCATION, PART, ETC)
	label	VARCHAR(16)	NOT NULL,	-- 라벨(기술지원, 오프라인 교육, 온라인 교육, 부품, 기타)

	PRIMARY KEY (question_type_id),
	UNIQUE (name)
);	-- Q&A 질문 유형


CREATE TABLE support__question_file
(
	file_id	BIGINT	NOT NULL,	-- 파일 pk
	question_id	BIGINT	NOT NULL,	-- Q&A 질문  fk

	PRIMARY KEY (file_id)
);	-- Q&A 질문 첨부파일


CREATE TABLE support__answer
(
	answer_id	BIGINT	GENERATED	ALWAYS AS IDENTITY NOT NULL,	-- Q&A 답변 pk

	question_id	BIGINT	NOT NULL,	-- Q&A 질문 fk

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	updater_id	BIGINT,	-- 변경자 fk
	updater	VARCHAR(32),	-- 변경자명

	description	TEXT	NOT NULL,	-- 답변 내용

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (answer_id)
);	-- Q&A 답변


CREATE TABLE support__answer_file
(
	file_id	BIGINT	NOT NULL,	-- 파일 pk
	answer_id	BIGINT	NOT NULL,	-- Q&A 답변 fk

	PRIMARY KEY (file_id)
);	-- Q&A 답변 첨부파일


CREATE TABLE support__question_user
(
	question_id	BIGINT	NOT NULL,	-- Q&A 질문 pk
	user_id	BIGINT	NOT NULL,	-- 사용자 pk

	PRIMARY KEY (question_id, user_id)
);	-- Q&A 질문 즐겨찾기


CREATE TABLE support__question_coordinator
(
	question_coordinator_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- Q&A 질문 담당자

	question_id	BIGINT	NOT NULL,	-- Q&A 질문 fk
	user_id	BIGINT	NOT NULL,	-- 사용자 fk

	PRIMARY KEY (question_coordinator_id),
	UNIQUE (question_id, user_id)
);	-- Q&A 질문 담당자(상세에서 추가된 담당자)


CREATE TABLE support__question_comment
(
	question_comment_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- Q&A 코멘트 pk

	question_id	BIGINT	NOT NULL,	-- Q&A 질문 fk

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	description	VARCHAR(300)	NOT NULL,	-- 내용

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 생성일

	PRIMARY KEY (question_comment_id)
);	-- Q&A 코멘트


CREATE TABLE support__special_nozzle
(
	special_nozzle_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 특수노즐 pk

	system_code	VARCHAR(15)	NOT NULL,	-- 시스템코드

	client_id	BIGINT	NOT NULL,	-- 고객사 fk

	response_part_type_id	SMALLINT	NOT NULL,	-- 대응 파트 타입 fk
	response_part_type_value	VARCHAR(32),	-- 대응 파트 타입이 etc일 경우 값

	need_anc	BOOLEAN	DEFAULT FALSE	NOT NULL,	-- ANC 필요여부

	model_id	BIGINT	NOT NULL,	-- 모델 fk

	manufacturer	VARCHAR(32)	NOT NULL,	-- 부품 제조사명
	part_name	VARCHAR(64)	NOT NULL,	-- 부품명

	product_type_id	BIGINT	NOT NULL,	-- 물종 fk

	description	TEXT	NOT NULL,	-- 요청내용

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	updater_id	BIGINT,	-- 변경자 fk
	updater	VARCHAR(32),	-- 변경자명

	end_datetime	TIMESTAMPTZ(6),	-- 종결일시

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (special_nozzle_id),
	UNIQUE (system_code)
);	-- 특수 노즐


CREATE TABLE lookup__response_part_type
(
	response_part_type_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 대응 파트 타입 pk

	name	VARCHAR(16)	NOT NULL,	-- 유형(PLATE, CONNECTOR, DIODE, LED, SWITCH, SHIELD, CAN, LENS, BUTTON, ETC)
	label	VARCHAR(16)	NOT NULL,	-- 라벨

	PRIMARY KEY (response_part_type_id),
	UNIQUE (name)
);	-- 대응 파트 타입


CREATE TABLE support__special_nozzle_data
(
	special_nozzle_data_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 특수 노즐 자료 pk

	special_nozzle_id	BIGINT	NOT NULL,	-- 특수노즐 fk
	special_nozzle_data_type_id	SMALLINT	NOT NULL,	-- 부품자료타입 fk

	width	NUMERIC(8, 3),	-- 폭
	length	NUMERIC(8, 3),	-- 길이
	thickness	NUMERIC(8, 3),	-- 두께

	memo	VARCHAR(256),	-- 특이사항

	file_id	BIGINT,	-- 첨부파일 fk

	PRIMARY KEY (special_nozzle_data_id)
);	-- 특수 노즐 자료


CREATE TABLE lookup__special_nozzle_data_type
(
	special_nozzle_data_type_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 부품자료타입 pk

	name	VARCHAR(16)	NOT NULL,	-- 유형(NOZZLE-NOZZLE, NOZZLE-TIP, PART-DRAWING, PART-PHOTO, REFERENCE)
	label	VARCHAR(16)	NOT NULL,	-- 라벨(노즐-노즐, 노즐-TIP, 부품-도면, 부품-사진, 참고자료)

	PRIMARY KEY (special_nozzle_data_type_id),
	UNIQUE (name)
);	-- 부품 자료 타입


CREATE TABLE support__special_nozzle_comment
(
	special_nozzle_comment_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 특수노즐 코멘트 pk

	special_nozzle_id	BIGINT	NOT NULL,	-- 특수노즐 fk
	description	VARCHAR(300)	NOT NULL,	-- 내용

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일

	PRIMARY KEY (special_nozzle_comment_id)
);	-- 특수 노즐 코멘트


CREATE TABLE support__special_nozzle_answer
(
	special_nozzle_answer_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 특수노즐 답변 pk

	special_nozzle_id	BIGINT 	NOT NULL,	-- 특수노즐 fk

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	updater_id	BIGINT,	-- 변경자 fk
	updater	VARCHAR(32),	-- 변경자명

	nozzle_selection_type_id	SMALLINT	NOT NULL,	-- 노즐 선정유형 fk
	wing_type_id	SMALLINT	NOT NULL,	-- 날개 타입 fk

	tip_inner_diameter	VARCHAR(100),	-- TIP 사이즈 내경
	tip_outer_diameter	VARCHAR(100),	-- TIP 사이즈 외경

	tip_shape_id	SMALLINT	NOT NULL,	-- TIP 형상 fk
	tip_material	VARCHAR(100),	-- TIP 재질(색상)

	component_supply_type	VARCHAR(100),	-- Component Supply Type

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일

	PRIMARY KEY (special_nozzle_answer_id)
);	-- 특수노즐 답변


CREATE TABLE support__special_nozzle_answer_product
(
    special_nozzle_answer_id    BIGINT  NOT NULL,   -- 특수노즐 답변 pk
    product_id  BIGINT  NOT NULL,   -- 제품/부품 fk

    PRIMARY KEY (special_nozzle_answer_id, product_id)
);  -- 특수 노즐 답변에 연결된 제품/부품


CREATE TABLE lookup__nozzle_selection_type
(
	nozzle_selection_type_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 노즐 선정유형 pk

	name	VARCHAR(8)	NOT NULL,	-- 유형(DB, NEW)
	label	VARCHAR(8)	NOT NULL,	-- LABEL

	PRIMARY KEY (nozzle_selection_type_id),
	UNIQUE (name)
);	-- 노즐 선정유형


CREATE TABLE lookup__wing_type
(
	wing_type_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 날개 타입 pk

	name	VARCHAR(8)	NOT NULL,	-- 유형(GRIPPER, SMALL, LARGE, MIDDLE, NA-ANC)
	label	VARCHAR(8)	NOT NULL,	-- 라벨

	PRIMARY KEY (wing_type_id),
	UNIQUE (name)
);	-- 날개 타입


CREATE TABLE lookup__tip_shape
(
	tip_shape_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 팁 형상 pk

	name	VARCHAR(16)	NOT NULL,	-- 유형(ROUND, SQUARE, IRREGULAR, GRIPPER, ETC)
	label	VARCHAR(16)	NOT NULL,	-- 라벨(원형, 사각, 이형, GRIPPER, ETC)

	PRIMARY KEY (tip_shape_id),
	UNIQUE (name)
);	-- 팁 형상



CREATE TABLE support__product_certification
(
	product_certification_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 제품인증 pk

	system_code	VARCHAR(17)	NOT NULL,	-- 시스템코드

	check_date	DATE	NOT NULL,	-- 검사일자
	certification_valid_period_id	SMALLINT	NOT NULL,	-- 인증 유효기간 fk

	client_id   BIGINT  NOT NULL,   -- 고객사 pk
	calibration_fixture_id	SMALLINT	NOT NULL,	-- 측정시편 fk

	registerer_id	BIGINT,	-- 작성자 fk
	registerer	VARCHAR(32),	-- 작성자명

	updater_id	BIGINT,	-- 변경자 fk
	updater	VARCHAR(32),	-- 변경자명

	created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일
	updated_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	-- 수정일

	PRIMARY KEY (product_certification_id),
	UNIQUE (system_code)
);	-- 제품인증


CREATE TABLE support__product_certification_email_log
(
    product_certification_email_log_id  BIGINT  GENERATED   ALWAYS  AS IDENTITY NOT NULL,   -- 제품인증 이메일 발송 이력 pk

    product_certification_id    BIGINT  NOT NULL,   -- 제품인증 fk

    sender_id   BIGINT, -- 송신인 pk

    iv_data_encryption_key          VARCHAR(2048)                 NOT NULL,           -- IV값
    encrypted_data_encryption_key   VARCHAR(2048)                 NOT NULL,           -- 암호화된 DEK값, 184 고정이다. AES-GCM-256

    validation_code    VARCHAR(32)    NOT NULL,   -- 인증서 다운로드 유효코드
    validity_period SMALLINT    NOT NULL,   -- 링크 유효기간

    created_datetime	TIMESTAMPTZ(6)	DEFAULT NOW()	NOT NULL,	--생성일

    PRIMARY KEY (product_certification_email_log_id)
);

CREATE TABLE support__product_certification_email_receiver
(
    product_certification_email_receiver_id  BIGINT  GENERATED   ALWAYS  AS IDENTITY NOT NULL,   -- 제품인증 이메일 수신자 pk

    product_certification_email_log_id    BIGINT  NOT NULL,   -- 제품인증 이메일 발송 이력 fk

    receiver_id BIGINT, -- 수신인 pk
    pii_email_address   VARCHAR(2048)   NOT NULL,   -- 이메일주소

    PRIMARY KEY (product_certification_email_receiver_id)
);


CREATE TABLE lookup__certification_valid_period
(
	certification_valid_period_id	SMALLINT	GENERATED BY DEFAULT AS IDENTITY NOT NULL,	-- 인증 유효기간 pk

	name	VARCHAR(8)	NOT NULL,	-- 유형(6-MONTH, 1-YEAR)
	label	VARCHAR(8)	NOT NULL,	-- 라벨(6개월, 1년)

	PRIMARY KEY (certification_valid_period_id),
	UNIQUE (name)
);	-- 인증 유효기간



CREATE TABLE support__product_certification_model
(
	product_certification_model_id	BIGINT	GENERATED ALWAYS AS IDENTITY	NOT NULL,	-- 제품인증 모델 pk

	product_certification_id	BIGINT	NOT NULL,	-- 제품인증 fk
	asset_id	BIGINT	NOT NULL,	-- 자산 fk

	line_name	VARCHAR(32),	-- 라인명

	PRIMARY KEY (product_certification_model_id)
);	-- 제품인증 모델


CREATE TABLE support__product_certification_model_file
(
	file_id	BIGINT	NOT NULL,	-- 파일 pk

	product_certification_model_id	BIGINT	NOT NULL,	-- 제품인증모델 fk

	chipmounter_head_id	BIGINT	NOT NULL,	-- 헤드 fk

	front_idx	SMALLINT,	-- front index
	rare_idx	SMALLINT,	-- rare index

	PRIMARY KEY (file_id)
);	-- 제품인증 첨부파일


CREATE TABLE lookup__calibration_fixture
(
	calibration_fixture_id	BIGINT	GENERATED BY DEFAULT AS IDENTITY	NOT NULL,	-- 측정시편 pk

	name	VARCHAR(16)	NOT NULL,	-- 유형(CHIP-1005R, CHIP-0603, CHIP-0402R, CHIP-03015R, CHIP-0201R, CHIP-01005R, QFP-BGA)
	label	VARCHAR(16)	NOT NULL,	-- 라벨(Chip 1005R, Chip 0603, Chip 0402R, Chip 03015R, Chip 0201R, Chip 01005R, QFP/BGA)

	PRIMARY KEY (calibration_fixture_id),
	UNIQUE (name)
);	-- 측정시편




/* ==============================================================================================================
                                                DOMAIN : SYSTEM
================================================================================================================= */

CREATE TABLE system__file
(
    file_id  BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL, -- '파일 PK',
    key      VARCHAR(1024)   NOT NULL, -- 'S3 업로드 키',
    location VARCHAR(2048)   NOT NULL, -- 'S3 로케이션',
    filename VARCHAR(1024)   NOT NULL, -- 'S3 파일명',
    size     INTEGER         NOT NULL, -- 'S3 사이즈',
    width    SMALLINT        NOT NULL, -- '이미지 가로사이즈, 65535까지 갈 일이 없어야 한다.',
    height   SMALLINT        NOT NULL, -- '이미지 세로사이즈, 65535까지 갈 일이 없어야 한다.',
    extension VARCHAR(4)     NOT NULL, -- 확장자

    PRIMARY KEY (file_id)
); -- '파일저장소';

CREATE TABLE system__continent
(
    continent_id     SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 대륙 PK
    iso_2letter_code CHAR(2) NOT NULL UNIQUE, -- ISO-3166 2자리 코드

    PRIMARY KEY (continent_id)
) ; -- 대륙

CREATE TABLE system__continent_i18n
(
    locale_id    SMALLINT    NOT NULL, -- 언어 FK
    continent_id SMALLINT    NOT NULL, -- 대륙 FK

    name         VARCHAR(16) NOT NULL, -- 대륙명

    PRIMARY KEY (locale_id, continent_id)
); -- 대륙 i18n

CREATE TABLE system__language
(
    language_id        SMALLINT GENERATED BY DEFAULT AS IDENTITY  NOT NULL, -- 언어 PK

    iso_2letter_code   CHAR(2)              NOT NULL UNIQUE, -- ISO-639 2자리 코드
    iso_3letter_code_t CHAR(3)              NOT NULL UNIQUE, -- ISO-639 3자리 코드, 639-2/T
    iso_3letter_code_b CHAR(3)              NOT NULL UNIQUE, -- ISO-639 3자리 코드, 639-2/B
    is_available       BOOLEAN DEFAULT TRUE NOT NULL,        -- 사용 여부

    PRIMARY KEY (language_id)
); -- 언어

CREATE TABLE system__language_i18n
(
    locale_id   SMALLINT NOT NULL, -- 언어 FK
    language_id SMALLINT NOT NULL, -- 대상 언어 FK

    name        VARCHAR(64) NOT NULL, -- 언어명

    PRIMARY KEY (locale_id, language_id)
) ; -- 언어 i18n


CREATE TABLE system__currency
(
    currency_id                       SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 화폐 PK

    alphabetic_code                   CHAR(3)          NOT NULL UNIQUE, -- ISO-4217 3자리 코드
    numeric_code                      SMALLINT         NOT NULL UNIQUE, -- ISO-4217 3자리 숫자
    minor_unit                        SMALLINT         NOT NULL,        -- ISO-4217 소수점 자리수

    exchange_update_date              DATE             NOT NULL,        -- 고시일자
    basic_rate_of_exchange            NUMERIC(16, 10)  NOT NULL,        -- 매매기준율
    telegraphic_transfer_selling_rate NUMERIC(16, 10)  NOT NULL,        -- 전신환매도율 (손님이 해외송금을 보낼 때)
    telegraphic_transfer_buying_rate  NUMERIC(16, 10)  NOT NULL,        -- 전신환매입율 (손님이 해외송금을 받을 때)
    cash_selling_rate                 NUMERIC(16, 10)  NOT NULL,        -- 현찰매도율 (손님이 외화현금을 살 때)
    cash_buying_rate                  NUMERIC(16, 10)  NOT NULL,        -- 현찰매입율 (손님이 외화현금을 팔 때)

    PRIMARY KEY (currency_id)
) ; -- 화폐

CREATE TABLE system__currency_i18n
(
    locale_id   SMALLINT          NOT NULL, -- 언어 FK
    currency_id SMALLINT          NOT NULL, -- 화폐 FK

    name        VARCHAR(64)       NOT NULL, -- 화폐명, entity 라 부름

    PRIMARY KEY (locale_id, currency_id)
) ; -- 화폐 i18n

CREATE TABLE system__country
(
    country_id           SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 국가 PK

    iso_2letter_code     CHAR(2)              NOT NULL UNIQUE, -- ISO-3166 2자리 코드
    iso_3letter_code     CHAR(3)              NOT NULL UNIQUE, -- ISO-3166 3자리 코드
    iso_3digit_number    SMALLINT             NOT NULL UNIQUE, -- ISO-3166 3자리 숫자, PADDING 은 알아서 넣는다.
    continent_id         SMALLINT             NOT NULL,        -- 대륙 FK
    national_currency_id SMALLINT             NOT NULL,        -- 국가 화폐 FK
    iso_phone_code       VARCHAR(5)           NOT NULL,        -- ISO 국가 전화 코드

    zip_code_rule        VARCHAR(16),                          -- 우편번호 규칙, 우편번호 없을 수 있음, A=Alphabet, N=Numeric, A=AlphaNumeric, -로 구성한다. ex) NNNNN (한국)
    phone_number_rule    VARCHAR(32)          NOT NULL,        -- 핸드폰번호 규칙, N=Numeric, ()=Optional, -로 구성한다. ex) (N)NN-(N)NNN-NNNN (한국)
    utc_timezone         CHAR(6)              NOT NULL,        -- 타임존 구분자 번호, +(or -)0(or 1)N:0(or 3)0 구성방식을 가지고 있다. ex) +09:00, -08:30
    is_available         BOOLEAN DEFAULT TRUE NOT NULL,        -- 사용 여부

    PRIMARY KEY (country_id)
); -- '국가';

CREATE TABLE system__country_i18n
(
    locale_id     SMALLINT      NOT NULL, -- '언어 FK',
    country_id    SMALLINT      NOT NULL, -- '국가 FK',

    name          VARCHAR(64)   NOT NULL, -- '국가명, ex) south korea',
    official_name VARCHAR(128)  NOT NULL, -- '국가명 풀네임, ex) The Republic of Korea',

    PRIMARY KEY (locale_id, country_id)
) ; -- 국가 i18n

CREATE TABLE system__timezone
(
    timezone_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 타임존 PK

    name        VARCHAR(32) NOT NULL UNIQUE,   -- 타임존명, 열거형값이다.
    "offset"    CHAR(6)     NOT NULL,          -- 타임존 구분자 번호, +(or -)0(or 1)N:0(or 3)0 구성방식을 가지고 있다. ex) +09:00, -08:30

    PRIMARY KEY (timezone_id)
) ; -- 타임존

CREATE TABLE system__country_timezone
(
    timezone_id SMALLINT  NOT NULL, -- 타임존 PK
    country_id  SMALLINT  NOT NULL, -- 국가 PK

    PRIMARY KEY (timezone_id, country_id)
); -- 국가와 연결된 타임존

CREATE TABLE system__state_or_province
(
    state_or_province_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 주,도 PK
    iso_2letter_code     CHAR(2)     NOT NULL UNIQUE, -- 2자리 코드
    country_id           SMALLINT    NOT NULL,        -- 국가 FK

    PRIMARY KEY (state_or_province_id)
) ; -- 주 또는 도

CREATE TABLE system__state_or_province_i18n
(
    locale_id            SMALLINT    NOT NULL, -- 언어 FK
    state_or_province_id SMALLINT    NOT NULL, -- 주,도 FK
    name                 VARCHAR(64) NOT NULL, -- 주,도 명

    PRIMARY KEY (locale_id, state_or_province_id)
) ; -- 주,도 i18n

CREATE TABLE system__city
(
    city_id              INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- '도시 PK',
    code                 VARCHAR(3)   NOT NULL UNIQUE, -- '2자리 코드', -- 확인할것
    country_id           SMALLINT     NOT NULL,        -- '국가 FK',
    state_or_province_id SMALLINT,                     -- '주 또는 도 FK, 없을 수 있다.',

    PRIMARY KEY (city_id)
) ; -- '도시';

CREATE TABLE system__city_i18n
(
    locale_id SMALLINT     NOT NULL, -- '언어 FK',
    city_id   INTEGER      NOT NULL, -- '도시 FK',
    name      VARCHAR(64)  NOT NULL, -- '도시 명',

    PRIMARY KEY (locale_id, city_id)
) ; -- '도시 i18n';


CREATE TABLE system__locale
(
    locale_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- '로케일 PK, 고유키끼리 곱해도 최대값이 안넘을 거라 예상한다.',
    language_id SMALLINT    NOT NULL, -- '언어 FK',
    country_id  SMALLINT    NOT NULL, -- '국가 FK',
    is_primary  BOOLEAN     NOT NULL, -- '기본 여부',

    PRIMARY KEY (locale_id),
    UNIQUE (language_id, country_id)
) ; -- '언어_국가 코드';

CREATE TABLE system__address
(
    address_id            BIGINT GENERATED BY DEFAULT AS IDENTITY      NOT NULL, -- '주소 PK',

    country_id            SMALLINT       NOT NULL, -- '국가 FK',
    state_or_province_id  SMALLINT,                -- '주 또는 도 FK 필요햔 경우 넣는다(ex 미국)',
    city_id               INTEGER,                 -- '도시 FK',

    pii_zip_code          VARCHAR(2048),           -- '우편번호',
    pii_address1          VARCHAR(2048)  NOT NULL, -- '주소1, FEDEX 주소길이 권장값 35자 이상',
    pii_address2          VARCHAR(2048),           -- '주소2, 없을 수 있다.',
    pii_address3          VARCHAR(2048),           -- '주소3, 없을 수 있다.',
    pii_latitude          VARCHAR(2048),           -- 위도
    pii_longitude         VARCHAR(2048),           -- 경도

    PRIMARY KEY (address_id)
) ; -- '주소';

CREATE TABLE system__service_action_type
(
    service_action_type_id   SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 서비스 조치 type PK
    profit_center_id         SMALLINT                                     NOT NULL,  -- profit center FK
    name                     VARCHAR(32)                                  NOT NULL,  -- name
    label                    VARCHAR(32),                                            -- label
    UNIQUE (name),
    PRIMARY KEY (service_action_type_id)
); -- 서비스 조치 타입

-- FIXME : 해당테이블은 system 관리에서 관리되는 데이터 이다.
--         레거시를 시스템을 통하여 기존 사용용도는 알았지만 crm쪽은 아직 구성 하지 못한상태 이다.
--         따라서 en,ko,cn의 not null 여부는 기획이 나오고 추후에 수정되어야 한다. (24.08.02)
--         우선 ko만 not null로 해 놓는다.
CREATE TABLE system__service_action
(
    service_action_id       BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 서비스 조치 type별 content
    service_action_type_id  SMALLINT                                   NOT NULL, -- 서비스 조치 타입 FK
    parent_id               BIGINT,                                              -- 부모 FK

    category_ko             VARCHAR(64)                                NOT NULL, -- 카테고리명 ko
    category_en             VARCHAR(64),                                         -- 카테고리명 en
    category_cn             VARCHAR(64),                                         -- 카테고리명 cn

    content_en              VARCHAR(64),                                         -- 내용 en
    content_cn              VARCHAR(64),                                         -- 내용 cn
    content_ko              VARCHAR(64)                                NOT NULL, -- 내용 ko

    PRIMARY KEY (service_action_id)
); -- 서비스 조치 및 상세

CREATE TABLE system__platform
(
    platform_id        		   	BIGINT 		GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 플랫폼 설정 PK
    exp_year_login			   	  SMALLINT									                 NOT NULL,  -- 로그 보관기간 설정 : CRM 로그인
	  exp_year_access_website		SMALLINT									                 NOT NULL,  -- 로그 보관기간 설정 : 페이지 접속
	  exp_year_notification		  SMALLINT									                 NOT NULL,  -- 로그 보관기간 설정 : 이메일/문자/알림
    exp_year_download			    SMALLINT									                 NOT NULL,  -- 로그 보관기간 설정 : 업/다운로드
    exp_year_search_keyword		SMALLINT	                                 NOT NULL,  -- 로그 보관기간 설정 : 키워드 검색
    exp_year_update_data		  SMALLINT	                                 NOT NULL,  -- 로그 보관기간 설정 : 데이터 수정
    exp_year_interface			  SMALLINT                                   NOT NULL,  -- 로그 보관기간 설정 : 인터페이스

    exp_day_share_notice		  SMALLINT	                                 NOT NULL,  -- 유효기간 관리 설정 : 공지사항 공유
    exp_day_share_data			  SMALLINT	                                 NOT NULL,  -- 유효기간 관리 설정 : 자료실 공유
    exp_day_share_product_certification		SMALLINT	                     NOT NULL,  -- 유효기간 관리 설정 : 제품인증 공유
    exp_day_share_online_education		SMALLINT	                         NOT NULL,  -- 유효기간 관리 설정 : 온라인교육 공유


   	name					VARCHAR(32)	                                           NOT NULL,  -- 시스템 정보 관리 : CRM 시스템명
    company_name_local		VARCHAR(64)                                    NOT NULL,  -- 시스템 정보 관리 : 회사명(Local)
    company_name_global 	VARCHAR(64)                                    NOT NULL,  -- 시스템 정보 관리 : 회사명(Global)
    ceo_name_local			VARCHAR(32)	                                     NOT NULL,  -- 시스템 정보 관리 : 대표이사명(Local)
    ceo_name_global			VARCHAR(32)	                                     NOT NULL,  -- 시스템 정보 관리 : 대표이사명(Global)
    company_logo_local_id   BIGINT 		                                   NOT NULL,  -- 시스템 정보 관리 : 회사로고(Local) 이미지 FK
    company_logo_global_id  BIGINT 		                                   NOT NULL,  -- 시스템 정보 관리 : 회사로고(Global) 이미지 FK
    company_seal_id			BIGINT 		                                       NOT NULL,  -- 시스템 정보 관리 : 회사직인 이미지 FK
    logo_full_id			BIGINT 		                                         NOT NULL,  -- 시스템 정보 관리 : CRM 시스템 로고(full) 이미지 FK
   	logo_simple_id			BIGINT 		                                       NOT NULL,  -- 시스템 정보 관리 : CRM 시스템 로고(simple) 이미지 FK
   	favicon_id				BIGINT 		                                         NOT NULL,  -- 시스템 정보 관리 : Favicon 이미지 FK
    ceo_signature_id		BIGINT		                                       NOT NULL,  -- 시스템 정보 관리 : 대표이사 서명 이미지 FK

    PRIMARY KEY (platform_id)
); -- 플랫폼 설정

CREATE TABLE system__platform_manager
(
    platform_manager_id        		   	BIGINT 		GENERATED BY DEFAULT AS IDENTITY NOT NULL,  -- 플랫폼 설정 PK
    platform_manager_section_id       SMALLINT,
    user_id	                          BIGINT,	-- 담당자 fk

    PRIMARY KEY (platform_id),
    UNIQUE(platform_manager_section_id, user_id)
); -- 플랫폼 담당자 설정

CREATE TABLE lookup__system_platform_manager_section
(
    platform_manager_section_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                VARCHAR(16) NOT NULL, -- 이름

    -- BOARD_NOTICE, BOARD_ARCHIVE, QNA_SUPPORT, QNA_PART, QNA_ETC, QNA_SPECIAL_NOZZLE

    label              VARCHAR(16),           -- label

    PRIMARY KEY (platform_manager_section_id)
);

CREATE TABLE lookup__system_register_channel
(
    register_channel_id SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 등록주체 PK
    name                VARCHAR(16) NOT NULL, -- 이름

    -- MDG, SCSS, FOUR-CUST, CRM

    label              VARCHAR(16),           -- lable

    PRIMARY KEY (register_channel_id)
); -- 데이터를 넣는 주체 (회사 데이터를 MDG, SCSS, 4CUST와 동기화 시켜야 해서 각 서비스에서 가져와야 한다.)

CREATE TABLE lookup__sales_organization
(
    sales_organization_id       SMALLINT GENERATED BY DEFAULT AS IDENTITY           NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (sales_organization_id),
    UNIQUE(name)
); -- 영업 조직;

CREATE TABLE lookup__plant
(
    plant_id                    SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (plant_id),
    UNIQUE(name)
); -- 공장;

CREATE TABLE lookup__profit_center
(
    profit_center_id            SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (profit_center_id)
); -- profit center (사업부)

CREATE TABLE lookup__profit_center_plant
(
    profit_center_id            SMALLINT           NOT NULL, -- PK
    plant_id                    SMALLINT           NOT NULL,

    PRIMARY KEY (profit_center_id, plant_id)
); -- profit center - plant;

CREATE TABLE lookup__document_status
(
    document_status_id          SMALLINT GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- PK
    name                        VARCHAR(32)           NOT NULL,
    label                       VARCHAR(32),

    PRIMARY KEY (document_status_id)
); -- document status;

/* ==============================================================================================================
                                                      BATCH
================================================================================================================= */

CREATE TABLE BATCH_JOB_INSTANCE
(
    JOB_INSTANCE_ID BIGINT       NOT NULL PRIMARY KEY,
    VERSION         BIGINT,
    JOB_NAME        VARCHAR(100) NOT NULL,
    JOB_KEY         VARCHAR(32)  NOT NULL,
    constraint JOB_INST_UN unique (JOB_NAME, JOB_KEY)
);

CREATE TABLE BATCH_JOB_EXECUTION
(
    JOB_EXECUTION_ID BIGINT    NOT NULL PRIMARY KEY,
    VERSION          BIGINT,
    JOB_INSTANCE_ID  BIGINT    NOT NULL,
    CREATE_TIME      TIMESTAMP NOT NULL,
    START_TIME       TIMESTAMP DEFAULT NULL,
    END_TIME         TIMESTAMP DEFAULT NULL,
    STATUS           VARCHAR(10),
    EXIT_CODE        VARCHAR(2500),
    EXIT_MESSAGE     VARCHAR(2500),
    LAST_UPDATED     TIMESTAMP,
    constraint JOB_INST_EXEC_FK foreign key (JOB_INSTANCE_ID)
        references BATCH_JOB_INSTANCE (JOB_INSTANCE_ID)
);

CREATE TABLE BATCH_JOB_EXECUTION_PARAMS
(
    JOB_EXECUTION_ID BIGINT       NOT NULL,
    PARAMETER_NAME   VARCHAR(100) NOT NULL,
    PARAMETER_TYPE   VARCHAR(100) NOT NULL,
    PARAMETER_VALUE  VARCHAR(2500),
    IDENTIFYING      CHAR(1)      NOT NULL,
    constraint JOB_EXEC_PARAMS_FK foreign key (JOB_EXECUTION_ID)
        references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

CREATE TABLE BATCH_STEP_EXECUTION
(
    STEP_EXECUTION_ID  BIGINT       NOT NULL PRIMARY KEY,
    VERSION            BIGINT       NOT NULL,
    STEP_NAME          VARCHAR(100) NOT NULL,
    JOB_EXECUTION_ID   BIGINT       NOT NULL,
    CREATE_TIME        TIMESTAMP    NOT NULL,
    START_TIME         TIMESTAMP DEFAULT NULL,
    END_TIME           TIMESTAMP DEFAULT NULL,
    STATUS             VARCHAR(10),
    COMMIT_COUNT       BIGINT,
    READ_COUNT         BIGINT,
    FILTER_COUNT       BIGINT,
    WRITE_COUNT        BIGINT,
    READ_SKIP_COUNT    BIGINT,
    WRITE_SKIP_COUNT   BIGINT,
    PROCESS_SKIP_COUNT BIGINT,
    ROLLBACK_COUNT     BIGINT,
    EXIT_CODE          VARCHAR(2500),
    EXIT_MESSAGE       VARCHAR(2500),
    LAST_UPDATED       TIMESTAMP,
    constraint JOB_EXEC_STEP_FK foreign key (JOB_EXECUTION_ID)
        references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

CREATE TABLE BATCH_STEP_EXECUTION_CONTEXT
(
    STEP_EXECUTION_ID  BIGINT        NOT NULL PRIMARY KEY,
    SHORT_CONTEXT      VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    constraint STEP_EXEC_CTX_FK foreign key (STEP_EXECUTION_ID)
        references BATCH_STEP_EXECUTION (STEP_EXECUTION_ID)
);

CREATE TABLE BATCH_JOB_EXECUTION_CONTEXT
(
    JOB_EXECUTION_ID   BIGINT        NOT NULL PRIMARY KEY,
    SHORT_CONTEXT      VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    constraint JOB_EXEC_CTX_FK foreign key (JOB_EXECUTION_ID)
        references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

-- DROP SEQUENCE BATCH_STEP_EXECUTION_SEQ;
-- DROP SEQUENCE BATCH_JOB_EXECUTION_SEQ;
-- DROP SEQUENCE BATCH_JOB_SEQ;

CREATE SEQUENCE IF NOT EXISTS BATCH_STEP_EXECUTION_SEQ MAXVALUE 9223372036854775807 NO CYCLE;
CREATE SEQUENCE IF NOT EXISTS BATCH_JOB_EXECUTION_SEQ MAXVALUE 9223372036854775807 NO CYCLE;
CREATE SEQUENCE IF NOT EXISTS BATCH_JOB_SEQ MAXVALUE 9223372036854775807 NO CYCLE;


/* CREATE 구문 [E] */


/* CONSTRAINT 구문 */

/* ==============================================================================================================
                                                DOMAIN : SYSTEM
================================================================================================================= */
ALTER TABLE system__continent_i18n
    ADD CONSTRAINT continent_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__continent_i18n
    ADD CONSTRAINT continent_i18n_fk_continent
        FOREIGN KEY (continent_id)
            REFERENCES system__continent (continent_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__language_i18n
    ADD CONSTRAINT system__language_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__language_i18n
    ADD CONSTRAINT system__language_i18n_fk_language
        FOREIGN KEY (language_id)
            REFERENCES system__language (language_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__currency_i18n
    ADD CONSTRAINT currency_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__currency_i18n
    ADD CONSTRAINT currency_i18n_fk_currency
        FOREIGN KEY (currency_id)
            REFERENCES system__currency (currency_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country
    ADD CONSTRAINT country_fk_continent
        FOREIGN KEY (continent_id)
            REFERENCES system__continent (continent_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country
    ADD CONSTRAINT country_fk_national_currency
        FOREIGN KEY (national_currency_id)
            REFERENCES system__currency (currency_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country_i18n
    ADD CONSTRAINT country_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country_i18n
    ADD CONSTRAINT country_i18n_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country_timezone
    ADD CONSTRAINT country_timezone_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__country_timezone
    ADD CONSTRAINT country_timezone_fk_timezone
        FOREIGN KEY (timezone_id)
            REFERENCES system__timezone (timezone_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__state_or_province
    ADD CONSTRAINT state_or_province_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__state_or_province_i18n
    ADD CONSTRAINT state_or_province_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__state_or_province_i18n
    ADD CONSTRAINT state_or_province_i18n_fk_province
        FOREIGN KEY (state_or_province_id)
            REFERENCES system__state_or_province (state_or_province_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__city
    ADD CONSTRAINT city_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__city
    ADD CONSTRAINT city_fk_state_or_province
        FOREIGN KEY (state_or_province_id)
            REFERENCES system__state_or_province (state_or_province_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE system__city_i18n
    ADD CONSTRAINT city_i18n_fk_locale
        FOREIGN KEY (locale_id)
            REFERENCES system__locale (locale_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__city_i18n
    ADD CONSTRAINT city_i18n_fk_city
        FOREIGN KEY (city_id)
            REFERENCES system__city (city_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__locale
    ADD CONSTRAINT locale_fk_language
        FOREIGN KEY (language_id)
            REFERENCES system__language (language_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__locale
    ADD CONSTRAINT locale_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__address
    ADD CONSTRAINT address_fk_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__address
    ADD CONSTRAINT address_fk_city
        FOREIGN KEY (city_id)
            REFERENCES system__city (city_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__address
    ADD CONSTRAINT address_fk_state_or_province
        FOREIGN KEY (state_or_province_id)
            REFERENCES system__state_or_province (state_or_province_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__service_action_type
    ADD CONSTRAINT fk_service_action_type_profit
        FOREIGN KEY (profit_center_id)
            REFERENCES lookup__profit_center (profit_center_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE system__service_action
    ADD CONSTRAINT fk_service_action_action_type
        FOREIGN KEY (service_action_type_id)
            REFERENCES system__service_action_type (service_action_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : content
================================================================================================================= */
ALTER TABLE content__terms_category
    ADD CONSTRAINT terms_category_fk_type
        FOREIGN KEY (terms_category_type_id)
            REFERENCES lookup__content_terms_category_type (type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE content__terms_category
    ADD CONSTRAINT terms_category_fk_region
        FOREIGN KEY (region_id)
            REFERENCES lookup__region (region_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE content__terms
    ADD CONSTRAINT terms_fk_terms_category
        FOREIGN KEY (terms_category_id)
            REFERENCES content__terms_category (terms_category_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE content__terms
    ADD CONSTRAINT terms_fk_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : role
================================================================================================================= */
ALTER TABLE role__company_permission
    ADD CONSTRAINT role__company_permission_FK_permission
        FOREIGN KEY (permission_id)
            REFERENCES role__permission (permission_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE role__company_permission
    ADD CONSTRAINT role__company_permission_FK_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : company
================================================================================================================= */
ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_company
        FOREIGN KEY (parent_company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_company_type
        FOREIGN KEY (company_type_id)
            REFERENCES lookup__company_company_type (company_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_company_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_business
        FOREIGN KEY (business_info_id)
            REFERENCES company__business_info (business_info_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_phone_country
        FOREIGN KEY (phone_country_id)
            REFERENCES system__country (country_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_fax_country
        FOREIGN KEY (fax_country_id)
            REFERENCES system__country (country_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_country
        FOREIGN KEY (country_id)
            REFERENCES system__country (country_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_selling_level
        FOREIGN KEY (selling_level_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_purchase_level
        FOREIGN KEY (purchase_level_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_selling_level_from_interface
        FOREIGN KEY (selling_level_from_interface_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_user_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_user_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_lookup__company_client_type
        FOREIGN KEY (client_type_id)
            REFERENCES lookup__company_client_type (client_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__company
    ADD CONSTRAINT company__company_FK_material_request_center
        FOREIGN KEY (material_request_center_id)
            REFERENCES company__company (company_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__center_client
    ADD CONSTRAINT company__center_client_FK_company_center
        FOREIGN KEY (center_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_sales_organization
        FOREIGN KEY (sales_organization_id)
            REFERENCES lookup__sales_organization (sales_organization_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_division
        FOREIGN KEY (division_id)
            REFERENCES lookup__division (division_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_price_list
        FOREIGN KEY (price_list_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_selling_level
        FOREIGN KEY (selling_level_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_purchase_level
        FOREIGN KEY (purchase_level_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__division_group
    ADD CONSTRAINT division_group_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__center_client
    ADD CONSTRAINT company__center_client_FK_company_client
        FOREIGN KEY (client_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_address
    ADD CONSTRAINT company__company_address_FK_company_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_address
    ADD CONSTRAINT company__company_address_FK_system__address
        FOREIGN KEY (address_id)
            REFERENCES system__address (address_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_address
  ADD CONSTRAINT company__company_address_FK_user_registerer
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_address
  ADD CONSTRAINT company__company_address_FK_user_updater
    FOREIGN KEY (updater_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_address
  ADD CONSTRAINT company__company_address_FK_system__register_channel
    FOREIGN KEY (register_channel_id)
      REFERENCES lookup__system_register_channel (register_channel_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_attachment
    ADD CONSTRAINT company__company_attachment_FK_company_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_attachment
    ADD CONSTRAINT company__company_attachment_FK_system__address
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__company_attachment
  ADD CONSTRAINT company__company_attachment_FK_user_registerer
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__department
    ADD CONSTRAINT company__department_FK_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__department
  ADD CONSTRAINT company__department_FK_user_registerer
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__department
  ADD CONSTRAINT company__department_FK_user_updater
    FOREIGN KEY (updater_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__apply_permission
  ADD CONSTRAINT company__apply_permission_FK_apply_permission_status
    FOREIGN KEY (apply_permission_status_id)
      REFERENCES lookup__company_apply_permission_status (apply_permission_status_id)
      ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE company__apply_permission
  ADD CONSTRAINT company__apply_permission_FK_company
    FOREIGN KEY (company_id)
      REFERENCES company__company (company_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__apply_permission
  ADD CONSTRAINT company__apply_permission_FK_issuer
    FOREIGN KEY (issuer_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__apply_permission_company_permission
  ADD CONSTRAINT company__apply_permission_company_permission_FK_apply
      FOREIGN KEY (apply_permission_id)
        REFERENCES company__apply_permission (apply_permission_id)
        ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__apply_permission_company_permission
  ADD CONSTRAINT company__apply_permission_company_permission_FK_permission
      FOREIGN KEY (company_permission_id)
        REFERENCES role__company_permission (company_permission_id)
        ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__client_manager
  ADD CONSTRAINT company__client_manager_FK_client
      FOREIGN KEY (client_id)
        REFERENCES company__company (company_id)
        ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__client_manager
    ADD CONSTRAINT fk_client_manager_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__cost_item
    ADD CONSTRAINT company__cost_item_FK_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__cost_item
    ADD CONSTRAINT company__cost_item_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;
/* ==============================================================================================================
                                                DOMAIN : user
================================================================================================================= */
ALTER TABLE user__user
    ADD CONSTRAINT user__user_FK_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user
    ADD CONSTRAINT user__user_FK_department
        FOREIGN KEY (department_id)
            REFERENCES company__department (department_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user
    ADD CONSTRAINT user__user_FK_profile_image
        FOREIGN KEY (profile_image_id)
        REFERENCES system__file (file_id)
        ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user
  ADD CONSTRAINT user__user_FK_phone_country
      FOREIGN KEY (phone_country_id)
      REFERENCES system__country (country_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user
  ADD CONSTRAINT user__user_FK_register
      FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user
  ADD CONSTRAINT user__user_FK_updater
      FOREIGN KEY (updater_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__user_company_permission
    ADD CONSTRAINT user__user_company_permission_FK_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__user_company_permission
    ADD CONSTRAINT user__user_company_permission_FK_company_permission
        FOREIGN KEY (company_permission_id)
            REFERENCES role__company_permission (company_permission_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__activity_log
    ADD CONSTRAINT user__activity_log_FK_user
    FOREIGN KEY (user_id)
        REFERENCES user__user (user_id)
        ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__activity_log
    ADD CONSTRAINT user__activity_log_FK_activity_log_type
    FOREIGN KEY (activity_log_type_id)
        REFERENCES lookup__user_activity_log_type (activity_log_type_id)
        ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE user__activity_log
    ADD CONSTRAINT user__activity_log_FK_activity_log_target_type
    FOREIGN KEY (activity_log_target_type_id)
        REFERENCES lookup__user_activity_log_target_type (activity_log_target_type_id)
        ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE user__apply_permission
    ADD CONSTRAINT user__apply_permission_FK_apply_permission_status
        FOREIGN KEY (apply_permission_status_id)
            REFERENCES lookup__user_apply_permission_status (apply_permission_status_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__apply_permission
    ADD CONSTRAINT user__apply_permission_FK_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__apply_permission
    ADD CONSTRAINT user__apply_permission_FK_issuer
        FOREIGN KEY (issuer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__apply_permission_company_permission
    ADD CONSTRAINT user__apply_permission_company_permission_FK_apply_permission
        FOREIGN KEY (apply_permission_id)
            REFERENCES user__apply_permission (apply_permission_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__apply_permission_company_permission
    ADD CONSTRAINT user__apply_permission_company_permission_FK_company_permission
        FOREIGN KEY (company_permission_id)
            REFERENCES role__company_permission (company_permission_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__request_password_change
    ADD CONSTRAINT user__request_password_change_FK_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__career
    ADD CONSTRAINT user__career_FK_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__career
    ADD CONSTRAINT user__career_FK_issuer
        FOREIGN KEY (issuer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__password_change_log
    ADD CONSTRAINT user__password_change_log_FK_user
        FOREIGN KEY (user_id)
          REFERENCES user__user (user_id)
          ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__notification
    ADD CONSTRAINT user__notification_FK_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__notification
    ADD CONSTRAINT user__notification_FK_notification_type
        FOREIGN KEY (type_id)
            REFERENCES lookup__notification_type (notification_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE user__notification
    ADD CONSTRAINT user__notification_FK_notification_target_type
        FOREIGN KEY (target_type_id)
            REFERENCES lookup__user_notification_target_type (notification_target_type_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE user__schedule
	ADD CONSTRAINT schedule_fk_user
		FOREIGN KEY (user_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE user__schedule
	ADD CONSTRAINT schedule_fk_schedule_type
		FOREIGN KEY (schedule_type_id)
			REFERENCES lookup__schedule_type (schedule_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

 /* ==============================================================================================================
                                                 DOMAIN : catalog
 ================================================================================================================= */

ALTER TABLE catalog__model
    ADD CONSTRAINT catalog__model_FK_parent_model
        FOREIGN KEY (parent_model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__model
    ADD CONSTRAINT catalog__model_FK_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__model
    ADD CONSTRAINT catalog__model_FK_model_type
        FOREIGN KEY (model_type_id)
            REFERENCES lookup__catalog_model_type (model_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

--ALTER TABLE catalog__model
--    ADD CONSTRAINT catalog__model_FK_registerer
--        FOREIGN KEY (registerer_id)
--            REFERENCES user__user (user_id)
--            ON DELETE SET NULL ON UPDATE CASCADE;

--ALTER TABLE catalog__model
--    ADD CONSTRAINT catalog__model_FK_updater
--        FOREIGN KEY (updater_id)
--            REFERENCES user__user (user_id)
--            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__model_image
    ADD CONSTRAINT catalog__model_image_FK_model_image_type
        FOREIGN KEY (model_image_type_id)
            REFERENCES lookup__catalog_model_image_type (model_image_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__model_image
    ADD CONSTRAINT catalog__model_image_FK_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__model_image
    ADD CONSTRAINT catalog__model_image_FK_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE catalog__model_option
    ADD CONSTRAINT catalog__model_option_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__model_option_value
    ADD CONSTRAINT catalog__model_option_value_option
        FOREIGN KEY (model_option_id)
            REFERENCES catalog__model_option (model_option_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER  TABLE  catalog__model_option_image
    ADD CONSTRAINT catalog__model_option_image_option
        FOREIGN KEY (model_option_id)
            REFERENCES catalog__model_option (model_option_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER  TABLE  catalog__model_option_image
    ADD CONSTRAINT catalog__model_option_image_image
        FOREIGN KEY (model_image_id)
            REFERENCES catalog__model_image (model_image_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__chipmounter_head
    ADD CONSTRAINT catalog__chipmounter_head_FK_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_type
        FOREIGN KEY (part_change_log_type_id)
            REFERENCES lookup__part_change_log_type (part_change_log_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_eco_grade
        FOREIGN KEY (eco_grade_id)
            REFERENCES lookup__eco_grade (eco_grade_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_company
        FOREIGN KEY (release_of_scope_company_type_id)
            REFERENCES lookup__company_company_type (company_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_service_response
        FOREIGN KEY (service_response_type_id)
            REFERENCES lookup__part_change_log_action_type (part_change_log_action_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_stock_management
        FOREIGN KEY (stock_management_type_id)
            REFERENCES lookup__part_change_log_action_type (part_change_log_action_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_one_to_one_compatibility
        FOREIGN KEY (one_to_one_compatibility_type_id)
            REFERENCES lookup__part_change_log_action_type (part_change_log_action_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log
    ADD CONSTRAINT fk_part_change_log_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_model
    ADD CONSTRAINT fk_part_change_log_model_part_change_log
        FOREIGN KEY (part_change_log_id)
            REFERENCES catalog__part_change_log (part_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_model
    ADD CONSTRAINT fk_part_change_log_model_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_attachment
    ADD CONSTRAINT fk_part_change_log_attachment_part_change_log
        FOREIGN KEY (part_change_log_id)
            REFERENCES catalog__part_change_log (part_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_attachment
    ADD CONSTRAINT fk_part_change_log_attachment_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_before_product
    ADD CONSTRAINT fk_before_product_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_before_product
    ADD CONSTRAINT fk_before_product_change_log
        FOREIGN KEY (part_change_log_id)
            REFERENCES catalog__part_change_log (part_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_after_product
    ADD CONSTRAINT fk_before_product_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__part_change_log_after_product
    ADD CONSTRAINT fk_before_product_change_log
        FOREIGN KEY (part_change_log_id)
            REFERENCES catalog__part_change_log (part_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_product_category
        FOREIGN KEY (product_category_id)
            REFERENCES lookup__product_category (product_category_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_hierarchy
        FOREIGN KEY (product_hierarchy_id)
            REFERENCES lookup__product_hierarchy (product_hierarchy_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_sa
        FOREIGN KEY (product_sa_id)
            REFERENCES lookup__product_sa (product_sa_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT catalog__product_FK_model_group
        FOREIGN KEY (product_model_group_id)
            REFERENCES lookup__product_model_group (product_model_group_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product
    ADD CONSTRAINT updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product_msds_attachment
    ADD CONSTRAINT product_msds_attachment_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_msds_attachment
    ADD CONSTRAINT product_msds_attachment_FK_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_msds_attachment
    ADD CONSTRAINT product_msds_attachment_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_plant
    ADD CONSTRAINT product_plant_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_plant
    ADD CONSTRAINT product_plant_FK_plant
        FOREIGN KEY (plant_id)
            REFERENCES lookup__plant (plant_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_plant
    ADD CONSTRAINT product_plant_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product_plant
    ADD CONSTRAINT product_plant_FK_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product_stock
    ADD CONSTRAINT product_stock_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_stock
    ADD CONSTRAINT product_stock_FK_plant
        FOREIGN KEY (plant_id)
            REFERENCES lookup__plant (plant_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_stock
    ADD CONSTRAINT product_stock_FK_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_stock
    ADD CONSTRAINT product_stock_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_stock
    ADD CONSTRAINT product_stock_FK_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_selling_price
    ADD CONSTRAINT product_selling_price_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_selling_price
    ADD CONSTRAINT product_selling_price_sales_organization
        FOREIGN KEY (sales_organization_id)
            REFERENCES lookup__sales_organization (sales_organization_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_selling_price
    ADD CONSTRAINT product_selling_price_price_list
        FOREIGN KEY (price_list_id)
            REFERENCES lookup__price_list (price_list_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_selling_price
    ADD CONSTRAINT product_selling_price_currency
        FOREIGN KEY (currency_id)
            REFERENCES system__currency (currency_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_selling_price_change_log
    ADD CONSTRAINT product_selling_price_change_selling_price
        FOREIGN KEY (product_selling_price_id)
            REFERENCES catalog__product_selling_price (product_selling_price_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_attachment
    ADD CONSTRAINT product_attachment_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_attachment
    ADD CONSTRAINT product_attachment_FK_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_attachment
    ADD CONSTRAINT product_attachment_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_image
    ADD CONSTRAINT product_image_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_image
    ADD CONSTRAINT product_image_FK_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_standard_work_hour
    ADD CONSTRAINT standard_work_hours_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_standard_work_hour
    ADD CONSTRAINT standard_work_hours_FK_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_standard_work_hour
    ADD CONSTRAINT standard_work_hours_FK_file
        FOREIGN KEY (work_image_id)
            REFERENCES system__file (file_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product_supplier_product
    ADD CONSTRAINT product_supplier_product_fk_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_supplier_product
    ADD CONSTRAINT product_supplier_product_fk_manufacturer
        FOREIGN KEY (product_supplier_id)
            REFERENCES catalog__product_supplier (product_supplier_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_sales_price
    ADD CONSTRAINT fk_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_sales_price
    ADD CONSTRAINT fk_currency
        FOREIGN KEY (currency_id)
            REFERENCES system__currency (currency_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_sales_price
    ADD CONSTRAINT fk_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute
    ADD CONSTRAINT fk_substitute_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute_item
    ADD CONSTRAINT fk_substitute_item_substitute
        FOREIGN KEY (product_substitute_id)
            REFERENCES catalog__product_substitute (product_substitute_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute_item
    ADD CONSTRAINT fk_substitute_item_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute_item
    ADD CONSTRAINT fk_substitute_item_revision
        FOREIGN KEY (product_substitute_revision_id)
            REFERENCES catalog__product_substitute_revision (product_substitute_revision_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute_revision
    ADD CONSTRAINT fk_substitute_revision_substitute
        FOREIGN KEY (product_substitute_id)
            REFERENCES catalog__product_substitute (product_substitute_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE catalog__product_substitute_revision
    ADD CONSTRAINT fk_substitute_revision_part_change_log
        FOREIGN KEY (part_change_log_id)
            REFERENCES catalog__part_change_log (part_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;



/* ==============================================================================================================
                                                DOMAIN : asset(자산)
================================================================================================================= */

ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_owner_company
        FOREIGN KEY (owner_company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_manage_company
        FOREIGN KEY (manage_company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_register_channel
        FOREIGN KEY (register_channel_id)
            REFERENCES lookup__system_register_channel (register_channel_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset
    ADD CONSTRAINT asset__asset_FK_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset
    ADD CONSTRAINT fk_asset_asset_sales_order
        FOREIGN KEY (sales_order_id)
            REFERENCES sales__sales_order (sales_order_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_information
    ADD CONSTRAINT asset__asset_information_FK_asset
        FOREIGN KEY (asset_id)
            REFERENCES asset__asset (asset_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_information
    ADD CONSTRAINT asset__asset_information_FK_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_information
    ADD CONSTRAINT asset__asset_information_FK_register_type
        FOREIGN KEY (information_register_type_id)
            REFERENCES lookup__asset_information_register_type (information_register_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE asset__asset_warranty_period
    ADD CONSTRAINT asset__asset_warranty_period_FK__asset
        FOREIGN KEY (asset_id)
            REFERENCES asset__asset (asset_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_warranty_period_attachment
    ADD CONSTRAINT fk_asset_warranty_period_warranty
        FOREIGN KEY (asset_warranty_period_id)
            REFERENCES asset__asset_warranty_period (asset_warranty_period_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_warranty_period_attachment
    ADD CONSTRAINT fk_asset_warranty_period_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_transfer_log
    ADD CONSTRAINT asset__asset_transfer_log_FK_status
        FOREIGN KEY (asset_transfer_status_id)
            REFERENCES lookup__asset_transfer_status (asset_transfer_status_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE asset__asset_transfer_log
    ADD CONSTRAINT asset__asset_transfer_log_FK_asset
        FOREIGN KEY (asset_id)
            REFERENCES asset__asset (asset_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_transfer_log
    ADD CONSTRAINT asset__asset_transfer_log_FK_owner
        FOREIGN KEY (owner_company_id)
            REFERENCES company__company (company_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_transfer_log
    ADD CONSTRAINT asset__asset_transfer_log_FK_manage
        FOREIGN KEY (manage_company_id)
            REFERENCES company__company (company_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_transfer_log
    ADD CONSTRAINT asset__asset_transfer_log_FK_transferor
        FOREIGN KEY (transferor_id)
            REFERENCES user__user (user_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;
/* ==============================================================================================================
                                                 DOMAIN : SETUP
 ================================================================================================================= */

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_center
		FOREIGN KEY	(center_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_client
		FOREIGN KEY	(client_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_client_address
		FOREIGN KEY	(client_address_id)
			REFERENCES	system__address (address_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_client_origin_address
		FOREIGN KEY	(client_origin_address_id)
			REFERENCES	company__company_address (company_address_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_client_qc_coordinator
		FOREIGN KEY (client_qc_coordinator_id)
			REFERENCES company__client_manager (client_manager_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_register_channel
		FOREIGN KEY	(register_channel_id)
			REFERENCES	lookup__system_register_channel (register_channel_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_project_status
		FOREIGN KEY	(project_status_id)
			REFERENCES	lookup__project_status (project_status_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__project
	ADD CONSTRAINT project_fk_updater
		FOREIGN KEY	(updater_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_project
		FOREIGN KEY	(project_id)
			REFERENCES	setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_product
		FOREIGN KEY	(product_id)
			REFERENCES	catalog__product (product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES	asset__asset (asset_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_sales_order
		FOREIGN KEY	(sales_order_id)
			REFERENCES	sales__sales_order (sales_order_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_asset_transfer_log
		FOREIGN KEY	(asset_transfer_log_id)
			REFERENCES	asset__asset_transfer_log (asset_transfer_log_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project_product
	ADD CONSTRAINT project_product_fk_shipping_item
		FOREIGN KEY	(shipping_item_id)
			REFERENCES	setup__shipping_item (shipping_item_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__project_administrator
	ADD CONSTRAINT project_administrator_fk_project
		FOREIGN KEY	(project_id)
			REFERENCES	setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project_administrator
	ADD CONSTRAINT project_administrator_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__pre_meeting
	ADD CONSTRAINT pre_meeting_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__pre_meeting
	ADD CONSTRAINT pre_meeting_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__pre_meeting_engineer
	ADD CONSTRAINT pre_meeting_engineer_fk_pre_meeting
		FOREIGN KEY	(pre_meeting_id)
			REFERENCES	setup__pre_meeting (pre_meeting_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__pre_meeting_engineer
	ADD CONSTRAINT pre_meeting_engineer_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__file
	ADD CONSTRAINT file_fk_file
		FOREIGN KEY (file_id)
			REFERENCES system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__file
	ADD CONSTRAINT file_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__file
	ADD CONSTRAINT file_fk_project_file_type
		FOREIGN KEY (project_file_type_id)
			REFERENCES lookup__project_file_type (project_file_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__file
	ADD CONSTRAINT file_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__upgrade
	ADD CONSTRAINT upgrade_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__upgrade
	ADD CONSTRAINT upgrade_fk_upgrade_location_type
		FOREIGN KEY (upgrade_location_type_id)
			REFERENCES lookup__upgrade_location_type (upgrade_location_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__upgrade_asset
	ADD CONSTRAINT upgrade_asset_fk_upgrade
		FOREIGN KEY (upgrade_id)
			REFERENCES setup__upgrade (upgrade_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__upgrade_asset
	ADD CONSTRAINT upgrade_asset_fk_project_product
		FOREIGN KEY (project_product_id)
			REFERENCES setup__project_product (project_product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_shipper_address
		FOREIGN KEY (shipper_address_id)
			REFERENCES system__address (address_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_shipper_phone_country
		FOREIGN KEY (shipper_phone_country_id)
			REFERENCES system__country (country_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_receiver_address
		FOREIGN KEY (receiver_address_id)
			REFERENCES system__address (address_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
    ADD CONSTRAINT shipping_group_fk_receiver_origin_address
        FOREIGN KEY (receiver_origin_address_id)
            REFERENCES company__company_address (company_address_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_receiver_attn
		FOREIGN KEY (receiver_attn_id)
			REFERENCES company__client_manager (client_manager_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group
	ADD CONSTRAINT shipping_group_fk_receiver_phone_country
		FOREIGN KEY (receiver_phone_country_id)
			REFERENCES system__country (country_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group_file
	ADD CONSTRAINT shipping_group_file_fk_file
		FOREIGN KEY (file_id)
			REFERENCES system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group_file
	ADD CONSTRAINT shipping_group_file_fk_shipping_group
		FOREIGN KEY (shipping_group_id)
			REFERENCES setup__shipping_group (shipping_group_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping_group_file
	ADD CONSTRAINT shipping_group_file_fk_project_file_type
		FOREIGN KEY (project_file_type_id)
			REFERENCES lookup__project_file_type (project_file_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping
	ADD CONSTRAINT shipping_fk_shipping_group
		FOREIGN KEY (shipping_group_id)
			REFERENCES setup__shipping_group (shipping_group_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping
	ADD CONSTRAINT shipping_fk_parent_shipping
		FOREIGN KEY (parent_shipping_id)
			REFERENCES setup__shipping (shipping_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__shipping
	ADD CONSTRAINT shipping_fk_project_shipping_type
		FOREIGN KEY (project_shipping_type_id)
			REFERENCES lookup__project_shipping_type (project_shipping_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__shipping_item
	ADD CONSTRAINT shipping_item_fk_shipping
		FOREIGN KEY (shipping_id)
			REFERENCES setup__shipping (shipping_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__test
	ADD CONSTRAINT test_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__test
	ADD CONSTRAINT test_fk_check_engineer
		FOREIGN KEY (check_engineer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE setup__test_engineer
	ADD CONSTRAINT test_engineer_fk_test
		FOREIGN KEY (test_id)
			REFERENCES setup__test (test_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__test_engineer
	ADD CONSTRAINT test_engineer_fk_user
		FOREIGN KEY (user_id)
			REFERENCES user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__test_check_list
	ADD CONSTRAINT test_check_list_fk_project_product
		FOREIGN KEY (project_product_id)
			REFERENCES setup__project_product (project_product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__comment
	ADD CONSTRAINT notice_comment_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__comment
	ADD CONSTRAINT notice_comment_fk_author
		FOREIGN KEY (author_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project_user
	ADD CONSTRAINT project_user_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__project_user
	ADD CONSTRAINT project_user_fk_user
		FOREIGN KEY (user_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__report
	ADD CONSTRAINT report_fk_project
		FOREIGN KEY (project_id)
			REFERENCES setup__project (project_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__report
	ADD CONSTRAINT report_fk_file
		FOREIGN KEY (file_id)
			REFERENCES system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE setup__report
	ADD CONSTRAINT report_fk_report_print_page_size
		FOREIGN KEY (report_print_page_size_id)
			REFERENCES lookup__report_print_page_size (report_print_page_size_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE setup__report
	ADD CONSTRAINT report_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : Sales Order (판매주문)
================================================================================================================= */
ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sales_order_type
        FOREIGN KEY (sales_order_type_id)
            REFERENCES lookup__sales_order_type (sales_order_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_payment_type
        FOREIGN KEY (payment_type_id)
            REFERENCES lookup__payment_type (payment_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sales_organization
        FOREIGN KEY (sales_organization_id)
            REFERENCES lookup__sales_organization (sales_organization_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_distribution_channel
        FOREIGN KEY (distribution_channel_id)
            REFERENCES lookup__distribution_channel (distribution_channel_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_division
        FOREIGN KEY (division_id)
            REFERENCES lookup__division (division_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_customer_group
        FOREIGN KEY (customer_group_id)
            REFERENCES lookup__customer_group (customer_group_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sales_group
        FOREIGN KEY (sales_group_id)
            REFERENCES lookup__sales_group (sales_group_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sales_office
        FOREIGN KEY (sales_office_id)
            REFERENCES lookup__sales_office (sales_office_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sales_district
        FOREIGN KEY (sales_district_id)
            REFERENCES lookup__sales_district (sales_district_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_ship_to_company
        FOREIGN KEY (ship_to_company_id)
            REFERENCES company__company (company_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_sold_to_company
        FOREIGN KEY (sold_to_company_id)
            REFERENCES company__company (company_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_plant
        FOREIGN KEY (plant_id)
            REFERENCES lookup__plant (plant_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_storage_location
        FOREIGN KEY (storage_location_id)
            REFERENCES lookup__storage_location (storage_location_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_shipping_point
        FOREIGN KEY (shipping_point_id)
            REFERENCES lookup__shipping_point (shipping_point_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE sales__sales_order
    ADD CONSTRAINT fk_sales_order_currency
        FOREIGN KEY (currency_id)
            REFERENCES system__currency (currency_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE sales__sales_order_item_group
    ADD CONSTRAINT fk_sales_order_item_group_order
        FOREIGN KEY (sales_order_id)
            REFERENCES sales__sales_order (sales_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE sales__sales_order_item_group
    ADD CONSTRAINT fk_sales_order_item_group_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE sales__sales_order_item
    ADD CONSTRAINT fk_sales_order_item_item_group
        FOREIGN KEY (sales_order_item_group_id)
            REFERENCES sales__sales_order_item_group (sales_order_item_group_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

--  FIXME: 자산 테이블 생성되면 연결
-- ALTER TABLE sales__sales_order_item
--    ADD CONSTRAINT fk_sales_order_item_asset
--        FOREIGN KEY (asset_id)
--            REFERENCES asset__asset (asset_id)
--            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE sales__sales_order_item
    ADD CONSTRAINT fk_sales_order_item_order_delivery
        FOREIGN KEY (sales_order_delivery_id)
            REFERENCES sales__sales_order_delivery (sales_order_delivery_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE sales__sales_order_delivery_history
    ADD CONSTRAINT fk_sales_order_delivery_history_delivery
        FOREIGN KEY (sales_order_delivery_id)
            REFERENCES sales__sales_order_delivery (sales_order_delivery_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : WORKTIME
================================================================================================================= */

ALTER TABLE worktime__worktime
	ADD CONSTRAINT worktime_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE worktime__worktime
	ADD CONSTRAINT worktime_fk_worktime_type
		FOREIGN KEY (worktime_type_id)
			REFERENCES lookup__worktime_type (worktime_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE worktime__worktime
	ADD CONSTRAINT worktime_fk_service_order
		FOREIGN KEY	(service_order_id)
			REFERENCES	service__service_order (service_order_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE worktime__worktime_item
	ADD CONSTRAINT worktime_item_fk_worktime
		FOREIGN KEY (worktime_id)
			REFERENCES worktime__worktime (worktime_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE worktime__worktime_item
	ADD CONSTRAINT worktime_item_fk_user
		FOREIGN KEY (user_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE worktime__worktime_item
	ADD CONSTRAINT worktime_item_fk_worktime_item_type
		FOREIGN KEY (worktime_item_type_id)
			REFERENCES lookup__worktime_item_type (worktime_item_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE worktime__worktime_file
	ADD CONSTRAINT worktime_file_fk_file
		FOREIGN KEY (file_id)
			REFERENCES system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE worktime__worktime_file
	ADD CONSTRAINT worktime_file_fk_worktime
		FOREIGN KEY (worktime_id)
			REFERENCES worktime__worktime (worktime_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE worktime__worktime_file
	ADD CONSTRAINT worktime_file_fk_registerer
		FOREIGN KEY (registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : service(서비스 주문)
================================================================================================================= */

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_asset
        FOREIGN KEY (asset_id)
            REFERENCES asset__asset (asset_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_client_manager
        FOREIGN KEY (client_manager_id)
            REFERENCES company__client_manager (client_manager_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_client_examiner
        FOREIGN KEY (client_examiner_id)
            REFERENCES company__client_manager (client_manager_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_client_company
        FOREIGN KEY (client_company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_manage_company
        FOREIGN KEY (manage_company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_check_status
        FOREIGN KEY (service_check_status_id)
            REFERENCES lookup__service_check_status (service_check_status_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_client_visit_date_type
        FOREIGN KEY (visit_date_type_id)
            REFERENCES lookup__visit_date_type (visit_date_type_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_failure_module
        FOREIGN KEY (failure_module_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_failure_area
        FOREIGN KEY (failure_area_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_failure_type
        FOREIGN KEY (failure_type_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_failure_phenomenon
        FOREIGN KEY (failure_phenomenon_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_action_type
        FOREIGN KEY (action_type_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_action_process
        FOREIGN KEY (action_process_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_service_type
        FOREIGN KEY (service_type_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_service_detail_type
        FOREIGN KEY (service_detail_type_id)
            REFERENCES system__service_action (service_action_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_receptionist
        FOREIGN KEY (receptionist_id)
            REFERENCES user__user (user_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_confirm_attachment
        FOREIGN KEY (confirm_attachment_id)
            REFERENCES system__file (file_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_sign
        FOREIGN KEY (sign_attachment_id)
            REFERENCES system__file (file_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service_order_client_address
        FOREIGN KEY (client_address_id)
            REFERENCES company__company_address (company_address_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE service__service_order
    ADD CONSTRAINT fk_service__service_order_profit_center
        FOREIGN KEY (profit_center_id)
        REFERENCES lookup__profit_center (profit_center_id)
        ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE service__order_attachment
    ADD CONSTRAINT fk_service_order_attachment_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__order_attachment
    ADD CONSTRAINT fk_service_order_attachment_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__user_bookmark
    ADD CONSTRAINT fk_service_user_bookmark_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__user_bookmark
    ADD CONSTRAINT fk_service_user_bookmark_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__engineer_allocator
    ADD CONSTRAINT fk_service_engineer_allocator_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__engineer_allocator
    ADD CONSTRAINT fk_service_engineer_allocator_allocator
        FOREIGN KEY (allocator_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__engineer_engineer
    ADD CONSTRAINT fk_service_engineer_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__engineer_engineer
    ADD CONSTRAINT fk_service_engineer_engineer
        FOREIGN KEY (engineer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_type_change_log
    ADD CONSTRAINT fk_service_service_type_change_log_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_type_change_log
    ADD CONSTRAINT fk_service_service_type_change_log_status
        FOREIGN KEY (service_type_change_status_id)
            REFERENCES lookup__service_type_change_status (service_type_change_status_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_type_change_log
    ADD CONSTRAINT fk_service_service_type_change_log_issuer
        FOREIGN KEY (issuer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_type_change_log_attachment
    ADD CONSTRAINT fk_service_type_change_attachment_log
        FOREIGN KEY (service_type_change_log_id)
            REFERENCES service__service_type_change_log (service_type_change_log_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__service_type_change_log_attachment
    ADD CONSTRAINT fk_service_type_change_attachment_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__invoice
    ADD CONSTRAINT fk_service_invoice_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__invoice_item
    ADD CONSTRAINT fk_service_invoice_item_invoice
        FOREIGN KEY (invoice_id)
            REFERENCES service__invoice (invoice_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__order_product
    ADD CONSTRAINT fk_service_order_product_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

-- FIXME : store 쪽 나오면 풀것 !!
-- ALTER TABLE service__order_product
--     ADD CONSTRAINT fk_service_order_product_store_order
--         FOREIGN KEY (store_order_id)
--             REFERENCES store__order (store_order_id)
--             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__order_product
    ADD CONSTRAINT fk_service_order_product_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE service__action_attachment
    ADD CONSTRAINT fk_service_action_attachment_service
        FOREIGN KEY (service_order_id)
            REFERENCES service__service_order (service_order_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE service__action_attachment
    ADD CONSTRAINT fk_service_action_attachment_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : VOC
================================================================================================================= */

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES	asset__asset (asset_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_updater
		FOREIGN KEY	(updater_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_center
		FOREIGN KEY	(center_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_client
		FOREIGN KEY	(client_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_country
		FOREIGN KEY	(country_id)
			REFERENCES	system__country (country_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_region
		FOREIGN KEY	(region_id)
			REFERENCES	lookup__region (region_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

/*ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_request_type
		FOREIGN KEY	(request_type_id)
			REFERENCES	voc__request_type (request_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;	*/

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_service_action
		FOREIGN KEY	(request_detail_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_voc_status
		FOREIGN KEY	(voc_status_id)
			REFERENCES	lookup__voc_status (voc_status_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__voc
	ADD CONSTRAINT voc_fk_service_order
		FOREIGN KEY (service_order_id)
			REFERENCES	service__service_order (service_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__request_detail_type
	ADD CONSTRAINT request_detail_type_fk_request_type
		FOREIGN KEY	(request_type_id)
			REFERENCES	voc__request_type (request_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__approval
	ADD CONSTRAINT approval_fk_voc
		FOREIGN KEY	(voc_id)
			REFERENCES	voc__voc (voc_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__approval
	ADD CONSTRAINT approval_fk_voc_grade
		FOREIGN KEY	(voc_grade_id)
			REFERENCES	lookup__voc_grade (voc_grade_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__approval
	ADD CONSTRAINT approval_fk_service_action
		FOREIGN KEY	(request_detail_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__approval
	ADD CONSTRAINT approval_fk_administrator
		FOREIGN KEY	(administrator_id)
			REFERENCES	user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__approval
	ADD CONSTRAINT approval_fk_coordinator
		FOREIGN KEY	(coordinator_id)
			REFERENCES	user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__measure
	ADD CONSTRAINT measure_fk_voc
		FOREIGN KEY	(voc_id)
			REFERENCES	voc__voc (voc_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__measure
	ADD CONSTRAINT measure_fk_service_action
		FOREIGN KEY	(measure_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__support
	ADD CONSTRAINT support_fk_voc
		FOREIGN KEY	(voc_id)
			REFERENCES	voc__voc (voc_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__email_template
	ADD CONSTRAINT email_template_fk_voc_status
		FOREIGN KEY	(voc_status_id)
			REFERENCES	lookup__voc_status (voc_status_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__email_log
	ADD CONSTRAINT email_log_fk_voc
		FOREIGN KEY	(voc_id)
			REFERENCES	voc__voc (voc_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__email_log
	ADD CONSTRAINT email_log_fk_voc_status
		FOREIGN KEY	(voc_status_id)
			REFERENCES	lookup__voc_status (voc_status_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE voc__email_receiver
	ADD CONSTRAINT email_receiver_fk_email_log
		FOREIGN KEY	(email_log_id)
			REFERENCES	voc__email_log (email_log_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__email_receiver
	ADD CONSTRAINT email_receiver_fk_receiver
		FOREIGN KEY	(receiver_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__voc_user
	ADD CONSTRAINT voc_user_fk_voc
		FOREIGN KEY	(voc_id)
			REFERENCES	voc__voc (voc_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE voc__voc_user
	ADD CONSTRAINT voc_user_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : STORE
================================================================================================================= */
ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_status
		FOREIGN KEY	(store_order_status_id)
			REFERENCES lookup__store_order_status (store_order_status_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_type
		FOREIGN KEY	(store_order_type_id)
			REFERENCES lookup__store_order_type (store_order_type_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_company
		FOREIGN KEY	(company_id)
			REFERENCES company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_client
		FOREIGN KEY	(client_id)
			REFERENCES company__company (company_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_client_manager
		FOREIGN KEY	(client_manager_id)
			REFERENCES company__client_manager (client_manager_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_document_status
		FOREIGN KEY	(document_status_id)
			REFERENCES lookup__document_status (document_status_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_registerer
		FOREIGN KEY	(orderer_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_updater
		FOREIGN KEY	(updater_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_material_request_center
		FOREIGN KEY	(material_request_center_id)
			REFERENCES company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order
	ADD CONSTRAINT store_order_fk_origin
		FOREIGN KEY	(origin_store_order_id)
			REFERENCES store__store_order (store_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_item
	ADD CONSTRAINT store_order_item_fk_order
		FOREIGN KEY	(store_order_id)
			REFERENCES store__store_order (store_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_item
	ADD CONSTRAINT store_order_item_fk_used_parts
		FOREIGN KEY	(used_parts_id)
			REFERENCES domain__used_parts (used_parts_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_item
	ADD CONSTRAINT store_order_item_fk_product
		FOREIGN KEY	(product_id)
			REFERENCES catalog__product (product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_item
	ADD CONSTRAINT store_order_item_fk_updater
		FOREIGN KEY	(updater_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_processed_order_item
	ADD CONSTRAINT processed_item_fk_order_item
		FOREIGN KEY	(store_order_item_id)
			REFERENCES store__store_order_item (store_order_item_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_processed_order_item
	ADD CONSTRAINT processed_item_fk_sales_order
		FOREIGN KEY	(sales_order_id)
			REFERENCES sales__sales_order (sales_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_attachment
	ADD CONSTRAINT store_order_attachment_fk_order
		FOREIGN KEY	(store_order_id)
			REFERENCES store__store_order (store_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_attachment
	ADD CONSTRAINT store_order_attachment_fk_file
		FOREIGN KEY	(file_id)
			REFERENCES system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_attachment
	ADD CONSTRAINT store_order_attachment_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_comment
	ADD CONSTRAINT store_order_comment_fk_order
		FOREIGN KEY	(store_order_id)
			REFERENCES store__store_order (store_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_order_comment
	ADD CONSTRAINT store_order_comment_fk_author
		FOREIGN KEY	(author_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_wish
	ADD CONSTRAINT store_wish_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_wish
	ADD CONSTRAINT store_wish_fk_product
		FOREIGN KEY	(product_id)
			REFERENCES catalog__product (product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_wish
	ADD CONSTRAINT store_wish_fk_company
		FOREIGN KEY	(company_id)
			REFERENCES company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export
	ADD CONSTRAINT store_export_fk_company
		FOREIGN KEY	(company_id)
			REFERENCES company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export
	ADD CONSTRAINT store_export_fk_status
		FOREIGN KEY	(store_export_status_id)
			REFERENCES lookup__store_export_status (store_export_status_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export
	ADD CONSTRAINT store_export_fk_registerer
		FOREIGN KEY	(requester_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export
	ADD CONSTRAINT store_export_fk_processor
		FOREIGN KEY	(processor_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_item
	ADD CONSTRAINT store_export_item_fk_export
		FOREIGN KEY	(store_export_id)
			REFERENCES store__store_export (store_export_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_item
	ADD CONSTRAINT store_export_item_fk_used_parts
		FOREIGN KEY	(used_parts_id)
			REFERENCES domain__used_parts (used_parts_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_item
	ADD CONSTRAINT store_export_item_fk_product
		FOREIGN KEY	(product_id)
			REFERENCES catalog__product (product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_execute
	ADD CONSTRAINT store_export_execute_fk_export
		FOREIGN KEY	(store_export_id)
			REFERENCES store__store_export (store_export_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_execute
	ADD CONSTRAINT store_export_execute_fk_registerer
		FOREIGN KEY	(processor_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_execute_item
	ADD CONSTRAINT store_export_execute_item_fk_execute
		FOREIGN KEY	(store_export_execute_id)
			REFERENCES store__store_export_execute (store_export_execute_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_execute_item
	ADD CONSTRAINT store_export_execute_item_fk_item
		FOREIGN KEY	(store_export_item_id)
			REFERENCES store__store_export_item (store_export_item_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion
	ADD CONSTRAINT store_export_execute_completion_fk_export
		FOREIGN KEY	(store_export_id)
			REFERENCES store__store_export (store_export_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion
	ADD CONSTRAINT store_export_execute_completion_fk_type
		FOREIGN KEY	(store_export_completion_type_id)
			REFERENCES lookup__store_export_completion_type (store_export_completion_type_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion
	ADD CONSTRAINT store_export_execute_completion_fk_processor
		FOREIGN KEY	(processor_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion
	ADD CONSTRAINT store_export_execute_completion_fk_store_order
		FOREIGN KEY	(store_order_id)
			REFERENCES store__store_order (store_order_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion_item
	ADD CONSTRAINT store_export_execute_completion_item_fk_completion
		FOREIGN KEY	(store_export_completion_id)
			REFERENCES store__store_export_completion (store_export_completion_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion_item
	ADD CONSTRAINT store_export_execute_completion_item_fk_item
		FOREIGN KEY	(store_export_item_id)
			REFERENCES store__store_export_item (store_export_item_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion_email_receiver
	ADD CONSTRAINT store_export_execute_completion_email_receiver_fk_completion
		FOREIGN KEY	(store_export_completion_id)
			REFERENCES store__store_export_completion (store_export_completion_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__store_export_completion_email_receiver
	ADD CONSTRAINT store_export_execute_completion_email_receiver_fk_receiver
		FOREIGN KEY	(receiver_id)
			REFERENCES user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE domain__used_parts
	ADD CONSTRAINT used_parts_fk_product
		FOREIGN KEY	(product_id)
			REFERENCES catalog__product (product_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE domain__used_parts
	ADD CONSTRAINT used_parts_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES asset__asset (asset_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE domain__used_parts
	ADD CONSTRAINT used_parts_fk_company
		FOREIGN KEY	(company_id)
			REFERENCES company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : lookup
================================================================================================================= */

ALTER TABLE lookup__profit_center_plant
    ADD CONSTRAINT fk_profit_center_plant_profit_center
        FOREIGN KEY (profit_center_id)
            REFERENCES lookup__profit_center (profit_center_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE lookup__profit_center_plant
    ADD CONSTRAINT fk_profit_center_plant_plant
        FOREIGN KEY (plant_id)
            REFERENCES lookup__plant (plant_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE lookup__storage_location
    ADD CONSTRAINT storage_location_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : store
================================================================================================================= */
ALTER TABLE store__trm_intro_setting
    ADD CONSTRAINT fk_store__trm_intro_setting
        FOREIGN KEY (default_category_model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE SET NULL ON UPDATE CASCADE;


ALTER TABLE store__trm_intro
    ADD CONSTRAINT fk_store_trm_intro_user
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__trm_model
    ADD CONSTRAINT fk_trm_model_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__trm_model
    ADD CONSTRAINT fk_trm_model_trm
        FOREIGN KEY (trm_id)
            REFERENCES store__trm (trm_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__trm_version
    ADD CONSTRAINT fk_trm_version_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE store__trm
    ADD CONSTRAINT fk_trm_version
        FOREIGN KEY (trm_version_id)
            REFERENCES store__trm_version (trm_version_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__trm
    ADD CONSTRAINT fk_trm_parent
        FOREIGN KEY (parent_id)
            REFERENCES store__trm (trm_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__trm
    ADD CONSTRAINT fk_trm_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE store__drawing_number
    ADD CONSTRAINT fk_drawing_number_trm
        FOREIGN KEY (trm_id)
            REFERENCES store__trm (trm_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__drawing_coordinate
    ADD CONSTRAINT fk_drawing_coordinate_number
        FOREIGN KEY (drawing_number_id)
            REFERENCES store__drawing_number (drawing_number_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__drawing_coordinate_product
    ADD CONSTRAINT fk_drawing_coordinate_product_coordinate
        FOREIGN KEY (drawing_coordinate_id)
            REFERENCES store__drawing_coordinate (drawing_coordinate_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE store__drawing_coordinate_product
    ADD CONSTRAINT fk_drawing_coordinate_product_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE CASCADE ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : PREVENTION
================================================================================================================= */

ALTER TABLE prevention__prevention
	ADD CONSTRAINT prevention_fk_prevention_type
		FOREIGN KEY	(prevention_type_id)
			REFERENCES	lookup__prevention_type (prevention_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__prevention
	ADD CONSTRAINT prevention_fk_prevention_status
		FOREIGN KEY	(prevention_status_id)
			REFERENCES	lookup__prevention_status (prevention_status_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__prevention
	ADD CONSTRAINT prevention_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__prevention
	ADD CONSTRAINT prevention_fk_updater
		FOREIGN KEY	(updater_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs
	ADD CONSTRAINT bs_fk_prevention
		FOREIGN KEY	(prevention_id)
			REFERENCES	prevention__prevention (prevention_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs
	ADD CONSTRAINT bs_fk_creation_center
		FOREIGN KEY	(creation_center_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs
	ADD CONSTRAINT bs_fk_management_center
		FOREIGN KEY	(management_center_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs
	ADD CONSTRAINT bs_fk_service_detail_type
		FOREIGN KEY	(service_detail_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_cost_item
	ADD CONSTRAINT bs_cost_item_fk_bs
		FOREIGN KEY	(bs_id)
			REFERENCES	prevention__bs (bs_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_administrator
	ADD CONSTRAINT bs_administrator_fk_bs
		FOREIGN KEY	(bs_id)
			REFERENCES	prevention__bs (bs_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_administrator
	ADD CONSTRAINT bs_administrator_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_administrator
	ADD CONSTRAINT bs_administrator_fk_bs_group
		FOREIGN KEY	(bs_group_id)
			REFERENCES	lookup__bs_group (bs_group_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_bs
		FOREIGN KEY	(bs_id)
			REFERENCES	prevention__bs (bs_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_client
		FOREIGN KEY	(client_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_client_address
		FOREIGN KEY	(client_address_id)
			REFERENCES	company__company_address (company_address_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_bs_group
		FOREIGN KEY	(bs_group_id)
			REFERENCES	lookup__bs_group (bs_group_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_check_engineer
		FOREIGN KEY	(check_engineer_id)
			REFERENCES	user__user (user_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client
	ADD CONSTRAINT bs_client_fk_client_coordinator
		FOREIGN KEY	(client_coordinator_id)
			REFERENCES	company__client_manager (client_manager_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_production_species
	ADD CONSTRAINT bs_production_species_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_production_species
	ADD CONSTRAINT bs_production_species_fk_service_action
		FOREIGN KEY	(bs_client_applied_species_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_production_species
	ADD CONSTRAINT bs_production_species_fk_image
		FOREIGN KEY	(image_id)
			REFERENCES	system__file (file_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_applied_species_type
	ADD CONSTRAINT bs_client_applied_species_type_fk_bs_industry_type
		FOREIGN KEY	(bs_industry_type_id)
			REFERENCES	prevention__bs_industry_type (bs_industry_type_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_am
	ADD CONSTRAINT bs_am_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_am
	ADD CONSTRAINT bs_am_fk_model
		FOREIGN KEY	(model_id)
			REFERENCES	catalog__model (model_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_job_description
	ADD CONSTRAINT bs_job_description_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_job_description
	ADD CONSTRAINT bs_job_description_fk_image
		FOREIGN KEY	(image_id)
			REFERENCES	system__file (file_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_job_description
	ADD CONSTRAINT bs_job_description_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_comment
	ADD CONSTRAINT bs_client_comment_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_comment
	ADD CONSTRAINT bs_client_comment_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_file
	ADD CONSTRAINT bs_client_file_fk_file
		FOREIGN KEY	(file_id)
			REFERENCES	system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_file
	ADD CONSTRAINT bs_client_file_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_client_file
	ADD CONSTRAINT bs_client_file_fk_bs_client_file_type
		FOREIGN KEY	(bs_client_file_type_id)
			REFERENCES	lookup__bs_client_file_type (bs_client_file_type_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__bs_asset
	ADD CONSTRAINT bs_asset_fk_bs_client
		FOREIGN KEY	(bs_client_id)
			REFERENCES	prevention__bs_client (bs_client_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_asset
	ADD CONSTRAINT bs_asset_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES	asset__asset (asset_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_file
	ADD CONSTRAINT bs_file_fk_file
		FOREIGN KEY	(file_id)
			REFERENCES	system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_file
	ADD CONSTRAINT bs_file_fk_bs
		FOREIGN KEY	(bs_id)
			REFERENCES	prevention__bs (bs_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_file
	ADD CONSTRAINT bs_file_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__bs_user
	ADD CONSTRAINT bs_user_fk_bs
		FOREIGN KEY	(bs_id)
			REFERENCES	prevention__bs (bs_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__bs_user
	ADD CONSTRAINT bs_user_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit
	ADD CONSTRAINT retrofit_fk_prevention
		FOREIGN KEY	(prevention_id)
			REFERENCES	prevention__prevention (prevention_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit
	ADD CONSTRAINT retrofit_fk_service_detail_type
		FOREIGN KEY	(service_detail_type_id)
			REFERENCES	system__service_action (service_action_id)
			ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit
	ADD CONSTRAINT retrofit_fk_center
		FOREIGN KEY	(center_id)
			REFERENCES	company__company (company_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_cost_item
	ADD CONSTRAINT retrofit_cost_item_fk_retrofit
		FOREIGN KEY	(retrofit_id)
			REFERENCES	prevention__retrofit (retrofit_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_file
	ADD CONSTRAINT retrofit_file_fk_file
		FOREIGN KEY	(file_id)
			REFERENCES	system__file (file_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_file
	ADD CONSTRAINT retrofit_file_fk_retrofit
		FOREIGN KEY	(retrofit_id)
			REFERENCES	prevention__retrofit (retrofit_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_file
	ADD CONSTRAINT retrofit_file_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_asset
	ADD CONSTRAINT retrofit_asset_fk_retrofit
		FOREIGN KEY	(retrofit_id)
			REFERENCES	prevention__retrofit (retrofit_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_asset
	ADD CONSTRAINT retrofit_asset_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES	asset__asset (asset_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_asset
	ADD CONSTRAINT retrofit_asset_fk_retrofit_processing
		FOREIGN KEY	(retrofit_processing_id)
			REFERENCES	prevention__retrofit_processing (retrofit_processing_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_processing
	ADD CONSTRAINT retrofit_processing_fk_file
		FOREIGN KEY	(file_id)
			REFERENCES	system__file (file_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_coordinator
	ADD CONSTRAINT retrofit_coordinator_fk_retrofit_processing
		FOREIGN KEY	(retrofit_processing_id)
			REFERENCES	prevention__retrofit_processing (retrofit_processing_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_coordinator
	ADD CONSTRAINT retrofit_coordinator_fk_user_id
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_user
	ADD CONSTRAINT retrofit_user_fk_retrofit
		FOREIGN KEY	(retrofit_id)
			REFERENCES	prevention__retrofit (retrofit_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prevention__retrofit_user
	ADD CONSTRAINT retrofit_user_fk_user
		FOREIGN KEY	(user_id)
			REFERENCES	user__user (user_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_prevention_log
	ADD CONSTRAINT asset_prevention_log_fk_prevention
		FOREIGN KEY	(prevention_id)
			REFERENCES	prevention__prevention (prevention_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_prevention_log
	ADD CONSTRAINT asset_prevention_log_fk_asset
		FOREIGN KEY	(asset_id)
			REFERENCES	asset__asset (asset_id)
			ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE asset__asset_prevention_log
	ADD CONSTRAINT asset_prevention_log_fk_client
		FOREIGN KEY	(client_id)
			REFERENCES	company__company (company_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_prevention_log
	ADD CONSTRAINT asset_prevention_log_fk_center
		FOREIGN KEY	(center_id)
			REFERENCES	company__company (company_id)
			ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE asset__asset_prevention_log
	ADD CONSTRAINT asset_prevention_log_fk_registerer
		FOREIGN KEY	(registerer_id)
			REFERENCES	user__user (user_id)
			ON DELETE SET NULL ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : EDUCATION (교육)
================================================================================================================= */

ALTER TABLE education__offline_classroom_city
  ADD CONSTRAINT fk_offline_classroom_city_profit_center
    FOREIGN KEY (profit_center_id)
      REFERENCES lookup__profit_center (profit_center_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom
  ADD CONSTRAINT fk_offline_classroom_city
    FOREIGN KEY (offline_classroom_city_id)
      REFERENCES education__offline_classroom_city (offline_classroom_city_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom
  ADD CONSTRAINT fk_offline_classroom_address
    FOREIGN KEY (address_id)
      REFERENCES system__address (address_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom
  ADD CONSTRAINT fk_education__offline_classroom_phone_country
    FOREIGN KEY (inquiry_phone_country_id)
      REFERENCES system__country (country_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom
  ADD CONSTRAINT fk_education__offline_classroom_user
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom_manager
  ADD CONSTRAINT fk_offline_classroom_manager_classroom
    FOREIGN KEY (offline_classroom_id)
      REFERENCES education__offline_classroom (offline_classroom_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_classroom_manager
  ADD CONSTRAINT fk_offline_classroom_manager_user
    FOREIGN KEY (manager_id)
      REFERENCES user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_class
  ADD CONSTRAINT fk_offline_class_classroom
    FOREIGN KEY (offline_classroom_id)
      REFERENCES education__offline_classroom (offline_classroom_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_class
  ADD CONSTRAINT fk_offline_class_open_status
    FOREIGN KEY (offline_class_open_status_id)
      REFERENCES lookup__offline_class_open_status (offline_class_open_status_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_class
  ADD CONSTRAINT fk_offline_class_image
    FOREIGN KEY (file_id)
      REFERENCES system__file (file_id)
      ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE education__offline_class
  ADD CONSTRAINT fk_offline_class_user
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__offline_class_audience
  ADD CONSTRAINT fk_offline_class_audience_class
    FOREIGN KEY (offline_class_id)
      REFERENCES education__offline_class (offline_class_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_class_audience
  ADD CONSTRAINT fk_offline_class_audience_status
    FOREIGN KEY (offline_audience_status_id)
      REFERENCES lookup__offline_audience_status (offline_audience_status_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__offline_class_audience
  ADD CONSTRAINT fk_offline_class_audience_phone_country
    FOREIGN KEY (phone_country_id)
      REFERENCES system__country (country_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_class
  ADD CONSTRAINT fk_online_class_profit_center
    FOREIGN KEY (profit_center_id)
      REFERENCES lookup__profit_center (profit_center_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_class
  ADD CONSTRAINT fk_online_class_registerer
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
  ADD CONSTRAINT fk_online_course_class
    FOREIGN KEY (online_class_id)
      REFERENCES education__online_class (online_class_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course
  ADD CONSTRAINT fk_online_course_ko_image
    FOREIGN KEY (image_ko_id)
      REFERENCES system__file (file_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
  ADD CONSTRAINT fk_online_course_en_image
    FOREIGN KEY (image_en_id)
      REFERENCES system__file (file_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
  ADD CONSTRAINT fk_online_course_cn_image
    FOREIGN KEY (image_cn_id)
      REFERENCES system__file (file_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
  ADD CONSTRAINT fk_online_course_registerer
    FOREIGN KEY (registerer_id)
      REFERENCES user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
    ADD CONSTRAINT education__online_course_updater
        FOREIGN KEY (updater_id)
        REFERENCES user__user (user_id)
        ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course
    ADD CONSTRAINT fk_education__online_course_company_type
      FOREIGN KEY (release_of_scope_company_type_id)
      REFERENCES lookup__company_company_type (company_type_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_manager
  ADD CONSTRAINT fk_online_course_manager_course
    FOREIGN KEY (online_course_id)
    REFERENCES education__online_course (online_course_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_manager
  ADD CONSTRAINT fk_online_course_manager_manager
    FOREIGN KEY (manager_id)
    REFERENCES user__user (user_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_attachment
  ADD CONSTRAINT fk_online_course_attachment_course
    FOREIGN KEY (online_course_id)
    REFERENCES education__online_course (online_course_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_attachment
  ADD CONSTRAINT fk_online_course_attachment_file
    FOREIGN KEY (file_id)
    REFERENCES system__file (file_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_bookmark
  ADD CONSTRAINT fk_online_course_bookmark_course
    FOREIGN KEY (online_course_id)
    REFERENCES education__online_course (online_course_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_bookmark
  ADD CONSTRAINT fk_online_course_bookmark_user
    FOREIGN KEY (user_id)
    REFERENCES user__user (user_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_curriculum
  ADD CONSTRAINT fk_online_curriculum_course
    FOREIGN KEY (online_course_id)
    REFERENCES education__online_course (online_course_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_curriculum
  ADD CONSTRAINT fk_online_curriculum_registerer
    FOREIGN KEY (registerer_id)
    REFERENCES user__user (user_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_lesson
  ADD CONSTRAINT fk_online_lesson_curriculum
    FOREIGN KEY (online_curriculum_id)
    REFERENCES education__online_curriculum (online_curriculum_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_lesson
  ADD CONSTRAINT fk_online_lesson_video_ko
    FOREIGN KEY (video_ko_id)
    REFERENCES system__file (file_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_lesson
  ADD CONSTRAINT fk_online_lesson_video_en
    FOREIGN KEY (video_en_id)
    REFERENCES system__file (file_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_lesson
  ADD CONSTRAINT fk_online_lesson_video_cn
    FOREIGN KEY (video_cn_id)
    REFERENCES system__file (file_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_lesson
  ADD CONSTRAINT fk_online_lesson_registerer
    FOREIGN KEY (registerer_id)
    REFERENCES user__user (user_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_course_applicant
  ADD CONSTRAINT fk_online_course_applicant_course
    FOREIGN KEY (online_course_id)
    REFERENCES education__online_course (online_course_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_applicant
  ADD CONSTRAINT fk_online_course_applicant_user
    FOREIGN KEY (user_id)
    REFERENCES user__user (user_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE education__online_course_applicant
  ADD CONSTRAINT fk_online_course_applicant_file
    FOREIGN KEY (file_id)
    REFERENCES system__file (file_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE education__online_complete_lesson
  ADD CONSTRAINT fk_online_complete_lesson_applicant
    FOREIGN KEY (online_course_applicant_id)
    REFERENCES education__online_course_applicant (online_course_applicant_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : AFTERMARKET
================================================================================================================= */
ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket_performance_client
        FOREIGN KEY (client_id)
            REFERENCES company__company (company_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket_performance_currency
        FOREIGN KEY (performance_currency_id)
            REFERENCES lookup__performance_currency (performance_currency_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket_performance_type
        FOREIGN KEY (performance_type_id)
            REFERENCES lookup__performance_type (performance_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket_performance_po_status
        FOREIGN KEY (po_status_id)
            REFERENCES lookup__po_status (po_status_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket_performance_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance
    ADD CONSTRAINT fk_aftermarket__performance_profit_center
        FOREIGN KEY (profit_center_id)
            REFERENCES lookup__profit_center (profit_center_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance_attachment
    ADD CONSTRAINT fk_performance_attachment_performance
        FOREIGN KEY (performance_id)
            REFERENCES aftermarket__performance (performance_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance_attachment
    ADD CONSTRAINT fk_performance_attachment_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance_attachment
    ADD CONSTRAINT fk_performance_attachment_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance_sales_order
    ADD CONSTRAINT fk_performance_sales_order_performance
        FOREIGN KEY (performance_id)
            REFERENCES aftermarket__performance (performance_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__performance_sales_order
    ADD CONSTRAINT fk_performance_sales_order_so
        FOREIGN KEY (sales_order_id)
            REFERENCES sales__sales_order (sales_order_id)
            ON DELETE SET NULL ON UPDATE CASCADE;


ALTER TABLE aftermarket__quote_record
    ADD CONSTRAINT fk_quote_record_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__quote_record
    ADD CONSTRAINT fk_quote_record_ref_type
        FOREIGN KEY (quote_record_ref_type_id)
            REFERENCES lookup__quote_record_ref_type (quote_record_ref_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__quote_record
    ADD CONSTRAINT fk_quote_record_currency
        FOREIGN KEY (performance_currency_id)
        REFERENCES lookup__performance_currency (performance_currency_id)
        ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE aftermarket__quote_record_product
    ADD CONSTRAINT fk_quote_record_product_record
        FOREIGN KEY (quote_record_id)
            REFERENCES aftermarket__quote_record (quote_record_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE aftermarket__quote_record_product
    ADD CONSTRAINT fk_quote_record_product_product
        FOREIGN KEY (product_id)
            REFERENCES catalog__product (product_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_company_logo_local_fk_file
        FOREIGN KEY (company_logo_local_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_company_logo_global_fk_file
        FOREIGN KEY (company_logo_global_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_company_seal_fk_file
        FOREIGN KEY (company_seal_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_logo_full_fk_file
        FOREIGN KEY (logo_full_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_logo_simple_fk_file
        FOREIGN KEY (logo_simple_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_favicon_fk_file
        FOREIGN KEY (favicon_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE system__platform
    ADD CONSTRAINT platform_ceo_signature_fk_file
        FOREIGN KEY (ceo_signature_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE system__platform_manager
     ADD CONSTRAINT platform_manager_user_id_fk_user
         FOREIGN KEY (user_id)
             REFERENCES user__user (user_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE system__platform_manager
      ADD CONSTRAINT platform_manager_section_id_fk_manager_section
          FOREIGN KEY (platform_manager_section_id)
              REFERENCES lookup__system_platform_manager_section (platform_manager_section_id)
              ON DELETE CASCADE ON UPDATE CASCADE;


/* ==============================================================================================================
                                                DOMAIN : BOARD (뉴스센터)
================================================================================================================= */

ALTER TABLE board__notice
    ADD CONSTRAINT notice_fk_notice_category
        FOREIGN KEY (category_id)
            REFERENCES board__notice_category (notice_category_id)
            ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE board__notice
    ADD CONSTRAINT notice_fk_user1
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice
    ADD CONSTRAINT notice_fk_user2
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice
    ADD CONSTRAINT notice_fk_company_company_type
        FOREIGN KEY (release_of_scope_company_type_id)
            REFERENCES lookup__company_company_type (company_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice
    ADD CONSTRAINT notice_fk_profit_center
        FOREIGN KEY (profit_center_id)
            REFERENCES lookup__profit_center (profit_center_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_attachment
    ADD CONSTRAINT notice_attachment_fk_notice
        FOREIGN KEY (notice_id)
            REFERENCES board__notice (notice_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_attachment
    ADD CONSTRAINT notice_attachment_fk_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_model
    ADD CONSTRAINT notice_model_fk_notice
        FOREIGN KEY (notice_id)
            REFERENCES board__notice (notice_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_model
    ADD CONSTRAINT notice_model_fk_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_detail_log
    ADD CONSTRAINT notice_detail_log_fk_notice
        FOREIGN KEY (notice_id)
            REFERENCES board__notice (notice_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_detail_log
    ADD CONSTRAINT notice_detail_log_fk_user
        FOREIGN KEY (viewer_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE board__notice_comment
    ADD CONSTRAINT notice_comment_fk_notice
        FOREIGN KEY (notice_id)
            REFERENCES board__notice (notice_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_comment
    ADD CONSTRAINT notice_comment_fk_user
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_comment
    ADD CONSTRAINT notice_comment_fk_notice_comment1
        FOREIGN KEY (parent_id)
            REFERENCES board__notice_comment (notice_comment_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_comment
    ADD CONSTRAINT notice_comment_fk_notice_comment2
        FOREIGN KEY (mention_id)
            REFERENCES board__notice_comment (notice_comment_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_comment_attachment
    ADD CONSTRAINT notice_comment_attachment_fk_notice_comment
        FOREIGN KEY (comment_id)
            REFERENCES board__notice_comment (notice_comment_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__notice_comment_attachment
    ADD CONSTRAINT notice_comment_attachment_fk_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE lookup__archive_type
  ADD CONSTRAINT archive_type_fk_archive_category
    FOREIGN KEY (archive_category_id)
      REFERENCES lookup__archive_category (archive_category_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive
  ADD CONSTRAINT archive_fk_archive_type
    FOREIGN KEY (archive_type_id)
      REFERENCES  lookup__archive_type (archive_type_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive
  ADD CONSTRAINT archive_fk_profit_center
    FOREIGN KEY (profit_center_id)
      REFERENCES  lookup__profit_center (profit_center_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive
  ADD CONSTRAINT archive_fk_user1
    FOREIGN KEY (registerer_id)
      REFERENCES  user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive
  ADD CONSTRAINT archive_fk_user2
    FOREIGN KEY (updater_id)
      REFERENCES  user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive
  ADD CONSTRAINT archive_fk_company_type
    FOREIGN KEY (release_of_scope_company_type_id)
      REFERENCES  lookup__company_company_type (company_type_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_attachment
  ADD CONSTRAINT archive_attachment_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_attachment
  ADD CONSTRAINT archive_attachment_fk_file
    FOREIGN KEY (file_id)
      REFERENCES  system__file (file_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_model
  ADD CONSTRAINT archive_model_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_model
  ADD CONSTRAINT archive_model_fk_model
    FOREIGN KEY (model_id)
      REFERENCES  catalog__model (model_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_product
  ADD CONSTRAINT archive_product_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_product
  ADD CONSTRAINT archive_product_fk_product
    FOREIGN KEY (product_id)
      REFERENCES  catalog__product (product_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_detail_log
  ADD CONSTRAINT archive_detail_log_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_detail_log
  ADD CONSTRAINT archive_detail_log_fk_user
    FOREIGN KEY (viewer_id)
      REFERENCES  user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE board__archive_attachment_download_log
  ADD CONSTRAINT archive_attachment_download_log_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_attachment_download_log
  ADD CONSTRAINT archive_attachment_download_log_fk_file
    FOREIGN KEY (file_id)
      REFERENCES  system__file (file_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE board__archive_attachment_download_log
  ADD CONSTRAINT archive_attachment_download_log_fk_user
    FOREIGN KEY (downloader_id)
      REFERENCES  user__user (user_id)
      ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE board__archive_bookmark
  ADD CONSTRAINT archive_bookmark_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_bookmark
  ADD CONSTRAINT archive_bookmark_fk_user
    FOREIGN KEY (user_id)
      REFERENCES  user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment
  ADD CONSTRAINT archive_comment_fk_archive
    FOREIGN KEY (archive_id)
      REFERENCES  board__archive (archive_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment
  ADD CONSTRAINT archive_comment_fk_user
    FOREIGN KEY (registerer_id)
      REFERENCES  user__user (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment
  ADD CONSTRAINT archive_comment_fk_archive_comment1
    FOREIGN KEY (parent_id)
      REFERENCES  board__archive_comment (archive_comment_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment
  ADD CONSTRAINT archive_comment_fk_archive_comment2
    FOREIGN KEY (mention_id)
      REFERENCES  board__archive_comment (archive_comment_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment_attachment
  ADD CONSTRAINT archive_comment_attachment_fk_archive_comment
    FOREIGN KEY (comment_id)
      REFERENCES  board__archive_comment (archive_comment_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE board__archive_comment_attachment
  ADD CONSTRAINT archive_comment_attachment_fk_file
    FOREIGN KEY (file_id)
      REFERENCES  system__file (file_id)
      ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__store_setting
    ADD CONSTRAINT store_setting_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE company__store_selling_setting
    ADD CONSTRAINT store_selling_setting_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE company__store_selling_manager
    ADD CONSTRAINT store_selling_manager_fk_selling_setting
        FOREIGN KEY (store_selling_setting_id)
            REFERENCES company__store_selling_setting (store_selling_setting_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE company__store_selling_manager
    ADD CONSTRAINT store_selling_manager_fk_selling_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE company__setup_manager
    ADD CONSTRAINT store_setup_manager_fk_setup_setting
        FOREIGN KEY (setup_setting_id)
            REFERENCES company__setup_setting (setup_setting_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE company__setup_manager
    ADD CONSTRAINT store_setup_manager_fk_selling_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE company__setup_setting
    ADD CONSTRAINT store_setup_setting_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

/* ==============================================================================================================
                                                DOMAIN : DEMO
================================================================================================================= */

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_client
        FOREIGN KEY (client_id)
            REFERENCES company__company (company_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_client_address
        FOREIGN KEY (client_address_id)
            REFERENCES company__company_address (company_address_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_company
        FOREIGN KEY (company_id)
            REFERENCES company__company (company_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_timezone
        FOREIGN KEY (base_timezone_id)
            REFERENCES system__timezone (timezone_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo
    ADD CONSTRAINT demo_fk_updater
        FOREIGN KEY (updater_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

 ALTER TABLE demo__demo_schedule
    ADD CONSTRAINT demo_schedule_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_manager
    ADD CONSTRAINT demo_manager_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_manager
    ADD CONSTRAINT demo_manager_fk_user
        FOREIGN KEY (user_id)
            REFERENCES user__user (user_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

 ALTER TABLE demo__demo_manager
    ADD CONSTRAINT demo_manager_fk_phone_country
        FOREIGN KEY (phone_country_id)
            REFERENCES system__country (country_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo_attachment
    ADD CONSTRAINT demo_attachment_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_attachment
    ADD CONSTRAINT demo_attachment_fk_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target
    ADD CONSTRAINT demo_evaluation_target_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target
    ADD CONSTRAINT demo_evaluation_target_fk_type
        FOREIGN KEY (demo_evaluation_target_type_id)
            REFERENCES lookup__demo_evaluation_target_type (demo_evaluation_target_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target
    ADD CONSTRAINT demo_evaluation_target_fk_asset
        FOREIGN KEY (asset_id)
            REFERENCES asset__asset (asset_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target
    ADD CONSTRAINT demo_evaluation_target_fk_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_line
    ADD CONSTRAINT demo_line_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_line_item
    ADD CONSTRAINT demo_line_item_fk_line
        FOREIGN KEY (demo_line_id)
            REFERENCES demo__demo_line (demo_line_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_line_item
    ADD CONSTRAINT demo_line_item_fk_evaluation_target
        FOREIGN KEY (demo_evaluation_target_id)
            REFERENCES demo__demo_evaluation_target (demo_evaluation_target_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target_software
    ADD CONSTRAINT evaluation_target_software_fk_target
        FOREIGN KEY (demo_evaluation_target_id)
            REFERENCES demo__demo_evaluation_target (demo_evaluation_target_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target_software
    ADD CONSTRAINT evaluation_target_software_fk_classification
        FOREIGN KEY (demo_evaluation_target_software_classification_id)
            REFERENCES lookup__demo_evaluation_target_software_classification (demo_evaluation_target_software_classification_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo_evaluation_target_software_version
    ADD CONSTRAINT evaluation_target_software_version_fk_target_software
        FOREIGN KEY (demo_evaluation_target_software_id)
            REFERENCES demo__demo_evaluation_target_software (demo_evaluation_target_software_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_pcb
    ADD CONSTRAINT demo_pcb_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_pcb
    ADD CONSTRAINT demo_pcb_fk_image
        FOREIGN KEY (image_id)
            REFERENCES system__file (file_id)
            ON DELETE SET NULL ON UPDATE CASCADE;

 ALTER TABLE demo__demo_pcb_item
    ADD CONSTRAINT demo_pcb_item_fk_pcb
        FOREIGN KEY (demo_pcb_id)
            REFERENCES demo__demo_pcb (demo_pcb_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_pcb_item
    ADD CONSTRAINT demo_pcb_item_fk_line_item
        FOREIGN KEY (demo_line_item_id)
            REFERENCES demo__demo_line_item (demo_line_item_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup
    ADD CONSTRAINT demo_workgroup_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup
    ADD CONSTRAINT demo_workgroup_fk_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_schedule
    ADD CONSTRAINT demo_workgroup_schedule_fk_workgroup
        FOREIGN KEY (demo_workgroup_id)
            REFERENCES demo__demo_workgroup (demo_workgroup_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_schedule_item
    ADD CONSTRAINT demo_workgroup_schedule_item_fk_schedule
        FOREIGN KEY (demo_workgroup_schedule_id)
            REFERENCES demo__demo_workgroup_schedule (demo_workgroup_schedule_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_schedule_item
    ADD CONSTRAINT demo_workgroup_schedule_item_fk_pcb
        FOREIGN KEY (demo_pcb_id)
            REFERENCES demo__demo_pcb (demo_pcb_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_schedule_item
    ADD CONSTRAINT demo_workgroup_schedule_item_fk_reason_type
        FOREIGN KEY (demo_workgroup_schedule_reason_type_id)
            REFERENCES lookup__demo_workgroup_schedule_reason_type (demo_workgroup_schedule_reason_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_output
    ADD CONSTRAINT demo_workgroup_output_fk_workgroup
        FOREIGN KEY (demo_workgroup_id)
            REFERENCES demo__demo_workgroup (demo_workgroup_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_output
    ADD CONSTRAINT demo_workgroup_output_fk_pcb
        FOREIGN KEY (demo_pcb_id)
            REFERENCES demo__demo_pcb (demo_pcb_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_output_item
    ADD CONSTRAINT demo_workgroup_output_item_fk_output
        FOREIGN KEY (demo_workgroup_output_id)
            REFERENCES demo__demo_workgroup_output (demo_workgroup_output_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_workgroup_output_item
    ADD CONSTRAINT demo_workgroup_output_item_fk_line_item
        FOREIGN KEY (demo_line_item_id)
            REFERENCES demo__demo_line_item (demo_line_item_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_issue
    ADD CONSTRAINT demo_issue_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_issue
    ADD CONSTRAINT demo_issue_fk_classification
        FOREIGN KEY (demo_issue_classification_id)
            REFERENCES lookup__demo_issue_classification (demo_issue_classification_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_issue
    ADD CONSTRAINT demo_issue_fk_evaluation_target
        FOREIGN KEY (demo_evaluation_target_id)
            REFERENCES demo__demo_evaluation_target (demo_evaluation_target_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo_issue
    ADD CONSTRAINT demo_issue_fk_model
        FOREIGN KEY (model_id)
            REFERENCES catalog__model (model_id)
            ON DELETE RESTRICT ON UPDATE CASCADE;

 ALTER TABLE demo__demo_issue
    ADD CONSTRAINT demo_issue_fk_improvement_type
        FOREIGN KEY (demo_issue_improvement_type_id)
            REFERENCES lookup__demo_issue_improvement_type (demo_issue_improvement_type_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report
    ADD CONSTRAINT demo_report_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report
    ADD CONSTRAINT demo_report_fk_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_attachment
    ADD CONSTRAINT demo_report_attachment_fk_demo
        FOREIGN KEY (demo_report_id)
            REFERENCES demo__demo_report (demo_report_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_attachment
    ADD CONSTRAINT demo_report_attachment_fk_file
        FOREIGN KEY (file_id)
            REFERENCES system__file (file_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_receiver
    ADD CONSTRAINT demo_report_receiver_fk_demo
        FOREIGN KEY (demo_id)
            REFERENCES demo__demo (demo_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_receiver
    ADD CONSTRAINT demo_report_receiver_fk_registerer
        FOREIGN KEY (registerer_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_email_log
    ADD CONSTRAINT demo_report_email_log_fk_report
        FOREIGN KEY (demo_report_id)
            REFERENCES demo__demo_report (demo_report_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_email_log
    ADD CONSTRAINT demo_report_email_log_fk_receiver
        FOREIGN KEY (demo_report_receiver_id)
            REFERENCES demo__demo_report_receiver (demo_report_receiver_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE demo__demo_report_email_log
    ADD CONSTRAINT demo_report_email_log_fk_sender
        FOREIGN KEY (sender_id)
            REFERENCES user__user (user_id)
            ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE catalog__product_model_change_log
     ADD CONSTRAINT product_model_change_log_fk_product
         FOREIGN KEY (product_id)
             REFERENCES catalog__product (product_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

 ALTER TABLE catalog__product_model_change_log
     ADD CONSTRAINT product_model_change_log_fk_user
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE CASCADE ON UPDATE CASCADE;



/* ==============================================================================================================
                                                DOMAIN : SUPPORT
================================================================================================================= */

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_question_type
         FOREIGN KEY (question_type_id)
             REFERENCES lookup__question_type (question_type_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_updater
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_registerer_phone_country
         FOREIGN KEY (registerer_phone_country_id)
             REFERENCES system__country (country_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_center
         FOREIGN KEY (center_id)
             REFERENCES company__company (company_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_offline_class
         FOREIGN KEY (offline_class_id)
             REFERENCES education__offline_class (offline_class_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_online_course
         FOREIGN KEY (online_course_id)
             REFERENCES education__online_course (online_course_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_model
         FOREIGN KEY (model_id)
             REFERENCES catalog__model (model_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_asset
         FOREIGN KEY (asset_id)
             REFERENCES asset__asset (asset_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question
     ADD CONSTRAINT question_fk_product
         FOREIGN KEY (product_id)
             REFERENCES catalog__product (product_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_file
     ADD CONSTRAINT question_file_fk_file
         FOREIGN KEY (file_id)
             REFERENCES system__file (file_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_file
     ADD CONSTRAINT question_file_fk_question
         FOREIGN KEY (question_id)
             REFERENCES support__question (question_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__answer
     ADD CONSTRAINT answer_fk_question
         FOREIGN KEY (question_id)
             REFERENCES support__question (question_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__answer
     ADD CONSTRAINT answer_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__answer
     ADD CONSTRAINT answer_fk_updater
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__answer_file
     ADD CONSTRAINT answer_fk_file
         FOREIGN KEY (file_id)
             REFERENCES system__file (file_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__answer_file
     ADD CONSTRAINT answer_fk_answer
         FOREIGN KEY (answer_id)
             REFERENCES support__answer (answer_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_user
     ADD CONSTRAINT question_user_fk_question
         FOREIGN KEY (question_id)
             REFERENCES support__question (question_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_user
     ADD CONSTRAINT question_user_fk_user
         FOREIGN KEY (user_id)
             REFERENCES user__user (user_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_coordinator
     ADD CONSTRAINT question_coordinator_fk_question
         FOREIGN KEY (question_id)
             REFERENCES support__question (question_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_coordinator
     ADD CONSTRAINT question_coordinator_fk_user
         FOREIGN KEY (user_id)
             REFERENCES user__user (user_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_comment
     ADD CONSTRAINT question_comment_fk_question
         FOREIGN KEY (question_id)
             REFERENCES support__question (question_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__question_comment
     ADD CONSTRAINT question_comment_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_client
         FOREIGN KEY (client_id)
             REFERENCES company__company (company_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_response_part_type
         FOREIGN KEY (response_part_type_id)
             REFERENCES lookup__response_part_type (response_part_type_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_model
         FOREIGN KEY (model_id)
             REFERENCES catalog__model (model_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_product_type
         FOREIGN KEY (product_type_id)
             REFERENCES system__service_action (service_action_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle
     ADD CONSTRAINT special_nozzle_fk_updater
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_data
     ADD CONSTRAINT special_nozzle_data_fk_special_nozzle
         FOREIGN KEY (special_nozzle_id)
             REFERENCES support__special_nozzle (special_nozzle_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_data
     ADD CONSTRAINT special_nozzle_data_fk_special_nozzle_data_type
         FOREIGN KEY (special_nozzle_data_type_id)
             REFERENCES lookup__special_nozzle_data_type (special_nozzle_data_type_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_data
     ADD CONSTRAINT special_nozzle_data_fk_file
         FOREIGN KEY (file_id)
             REFERENCES system__file (file_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_comment
     ADD CONSTRAINT special_nozzle_comment_fk_special_nozzle
         FOREIGN KEY (special_nozzle_id)
             REFERENCES support__special_nozzle (special_nozzle_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_comment
     ADD CONSTRAINT special_nozzle_comment_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_special_nozzle
         FOREIGN KEY (special_nozzle_id)
             REFERENCES support__special_nozzle (special_nozzle_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_updater
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_nozzle_selection_type
         FOREIGN KEY (nozzle_selection_type_id)
             REFERENCES lookup__nozzle_selection_type (nozzle_selection_type_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_wing_type
         FOREIGN KEY (wing_type_id)
             REFERENCES lookup__wing_type (wing_type_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer
     ADD CONSTRAINT special_nozzle_answer_fk_tip_shape
         FOREIGN KEY (tip_shape_id)
             REFERENCES lookup__tip_shape (tip_shape_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE support__special_nozzle_answer_product
     ADD CONSTRAINT special_nozzle_answer_product_fk_special_nozzle_answer
         FOREIGN KEY (special_nozzle_answer_id)
             REFERENCES support__special_nozzle_answer (special_nozzle_answer_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__special_nozzle_answer_product
     ADD CONSTRAINT special_nozzle_answer_product_fk_product
         FOREIGN KEY (product_id)
             REFERENCES catalog__product (product_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification
     ADD CONSTRAINT product_certification_fk_certification_valid_period
         FOREIGN KEY (certification_valid_period_id)
             REFERENCES lookup__certification_valid_period (certification_valid_period_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__product_certification
     ADD CONSTRAINT product_certification_fk_registerer
         FOREIGN KEY (registerer_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__product_certification
     ADD CONSTRAINT product_certification_fk_updater
         FOREIGN KEY (updater_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__product_certification
     ADD CONSTRAINT product_certification_fk_client
         FOREIGN KEY (client_id)
             REFERENCES company__company (company_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification
     ADD CONSTRAINT product_certification_fk_calibration_fixture
         FOREIGN KEY (calibration_fixture_id)
             REFERENCES lookup__calibration_fixture (calibration_fixture_id)
             ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE support__product_certification_model
     ADD CONSTRAINT product_certification_model_fk_product_certification
         FOREIGN KEY (product_certification_id)
             REFERENCES support__product_certification (product_certification_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_model
     ADD CONSTRAINT product_certification_model_fk_asset
         FOREIGN KEY (asset_id)
             REFERENCES asset__asset (asset_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_model_file
     ADD CONSTRAINT product_certification_model_file_fk_file
         FOREIGN KEY (file_id)
             REFERENCES system__file (file_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_model_file
     ADD CONSTRAINT product_certification_model_file_fk_product_certification_model
         FOREIGN KEY (product_certification_model_id)
             REFERENCES support__product_certification_model (product_certification_model_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_model_file
     ADD CONSTRAINT product_certification_model_file_fk_chipmounter_head
         FOREIGN KEY (chipmounter_head_id)
             REFERENCES catalog__chipmounter_head (chipmounter_head_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_email_log
     ADD CONSTRAINT product_certification_email_log_fk_product_certification
         FOREIGN KEY (product_certification_id)
             REFERENCES support__product_certification (product_certification_id)
             ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE support__product_certification_email_log
     ADD CONSTRAINT product_certification_email_log_fk_sender
         FOREIGN KEY (sender_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__product_certification_email_receiver
     ADD CONSTRAINT pc_email_receiver_fk_receiver
         FOREIGN KEY (receiver_id)
             REFERENCES user__user (user_id)
             ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE support__product_certification_email_receiver
     ADD CONSTRAINT pc_email_receiver_fk_product_certification_email_log
         FOREIGN KEY (product_certification_email_log_id)
             REFERENCES support__product_certification_email_log (product_certification_email_log_id)
             ON DELETE CASCADE ON UPDATE CASCADE;





-- 인덱스 추가

-- sales order 조회시 엄청 느려서 추가 (240909)
CREATE INDEX so_idx_plant_id ON sales__sales_order(plant_id);
CREATE INDEX a_idx_asset_sales_order_id ON asset__asset (sales_order_id);
