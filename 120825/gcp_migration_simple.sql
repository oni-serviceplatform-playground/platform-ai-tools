-- =====================================================
-- GCP 테이블 복제 및 데이터 이관 스크립트
-- userdb에 platform_portal의 GCP 테이블 생성 후 데이터 이관
-- =====================================================

-- 1. userdb에 gcp_project 테이블 생성
CREATE TABLE IF NOT EXISTS userdb.gcp_project (
    CMPN_ID VARCHAR(50) NOT NULL,
    SITE_CD VARCHAR(50) NOT NULL,
    PROJECT_ID VARCHAR(200) NOT NULL,
    PROJECT_ALIAS VARCHAR(200) NOT NULL,
    PROJECT_TYPE VARCHAR(20) DEFAULT 'Resource',
    SERVICE_ACCOUNT_ID VARCHAR(100) NOT NULL,
    SERVICE_ACCOUNT_PROJECT_ID VARCHAR(100),
    DATASET_ID VARCHAR(255),
    BIG_QUERY_TABLE_NAME VARCHAR(255),
    STATUS VARCHAR(40),
    ERROR_DESCRIPTION TEXT,
    DEL_YN VARCHAR(1) NOT NULL,
    CREA_DT DATETIME DEFAULT CURRENT_TIMESTAMP,
    CREA_ID VARCHAR(50),
    UPDT_DT DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UPDT_ID VARCHAR(50),
    PRIMARY KEY (CMPN_ID, SITE_CD, PROJECT_ID)
);

-- 2. userdb에 gcp_service_account 테이블 생성
CREATE TABLE IF NOT EXISTS userdb.gcp_service_account (
    CMPN_ID VARCHAR(50) NOT NULL,
    SITE_CD VARCHAR(50) NOT NULL,
    SERVICE_ACCOUNT_ID VARCHAR(200) NOT NULL,
    SERVICE_ACCOUNT_ALIAS VARCHAR(255),
    SERVICE_ACCOUNT_KEY VARBINARY(10000) NOT NULL,
    SERVICE_ACCOUNT_PROJECT_ID VARCHAR(100) NOT NULL,
    SERVICE_ACCOUNT_EMAIL VARCHAR(255),
    STATUS VARCHAR(20),
    ERROR_DESCRIPTION TEXT,
    DEL_YN VARCHAR(1) NOT NULL,
    CREA_DT DATETIME DEFAULT CURRENT_TIMESTAMP,
    CREA_ID VARCHAR(50),
    UPDT_DT DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UPDT_ID VARCHAR(50),
    PRIMARY KEY (CMPN_ID, SITE_CD, SERVICE_ACCOUNT_ID)
);

-- 3. tbps_gcp_acc_m 데이터를 gcp_project 테이블로 이관
INSERT INTO userdb.gcp_project (
    CMPN_ID,
    SITE_CD,
    PROJECT_ID,
    PROJECT_ALIAS,
    PROJECT_TYPE,
    SERVICE_ACCOUNT_ID,
    SERVICE_ACCOUNT_PROJECT_ID,
    DATASET_ID,
    BIG_QUERY_TABLE_NAME,
    STATUS,
    ERROR_DESCRIPTION,
    DEL_YN,
    CREA_DT,
    CREA_ID,
    UPDT_DT,
    UPDT_ID
)
SELECT 
    CMPN_ID,
    SITE_CD,
    PJT_ID,
    COALESCE(ACC_ALIAS, PJT_ID),
    COALESCE(PJT_TYPE, 'Resource'),
    CONCAT('sa-', MSTR_PJT_ID),
    MSTR_PJT_ID,
    NULL,
    BQRY_TBL_NM,
    CASE 
        WHEN HLTH_YN = 'Y' THEN 'ACTIVE'
        WHEN ERR_CD IS NOT NULL THEN 'ERROR'
        ELSE 'INACTIVE'
    END,
    ERR_DESC,
    DEL_YN,
    CREA_DT,
    CREA_ID,
    UPDT_DT,
    UPDT_ID
FROM userdb.tbps_gcp_acc_m
WHERE DEL_YN = 'N'
AND  CMPN_ID IN ('6a341ea8-b396-47fa-871d-59055181f000','e6133249-34c5-4289-bbdb-bda3fad0d437')

-- 4. tbps_gcp_svc_acc_m 데이터를 gcp_service_account 테이블로 이관
INSERT INTO userdb.gcp_service_account (
    CMPN_ID,
    SITE_CD,
    SERVICE_ACCOUNT_ID,
    SERVICE_ACCOUNT_ALIAS,
    SERVICE_ACCOUNT_KEY,
    SERVICE_ACCOUNT_PROJECT_ID,
    SERVICE_ACCOUNT_EMAIL,
    STATUS,
    ERROR_DESCRIPTION,
    DEL_YN,
    CREA_DT,
    CREA_ID,
    UPDT_DT,
    UPDT_ID
)
SELECT 
    sa.CMPN_ID,
    sa.SITE_CD,
    CONCAT('sa-', sa.MSTR_PJT_ID),
    CONCAT('Service Account for ', sa.MSTR_PJT_ID),
    sa.SVC_ACC_JSON,
    sa.MSTR_PJT_ID,
    NULL,
    'ACTIVE',
    NULL,
    sa.DEL_YN,
    sa.CREA_DT,
    sa.CREA_ID,
    sa.UPDT_DT,
    sa.UPDT_ID
FROM userdb.tbps_gcp_svc_acc_m sa
WHERE sa.DEL_YN = 'N'
AND  CMPN_ID IN ('6a341ea8-b396-47fa-871d-59055181f000','e6133249-34c5-4289-bbdb-bda3fad0d437')

-- 5. 데이터 이관 검증
SELECT 
    'Original tbps_gcp_acc_m' as table_name,
    COUNT(*) as row_count
FROM userdb.tbps_gcp_acc_m
WHERE DEL_YN = 'N'
UNION ALL
SELECT 
    'New gcp_project' as table_name,
    COUNT(*) as row_count
FROM userdb.gcp_project
UNION ALL
SELECT 
    'Original tbps_gcp_svc_acc_m' as table_name,
    COUNT(*) as row_count
FROM userdb.tbps_gcp_svc_acc_m
WHERE DEL_YN = 'N'
UNION ALL
SELECT 
    'New gcp_service_account' as table_name,
    COUNT(*) as row_count
FROM userdb.gcp_service_account;