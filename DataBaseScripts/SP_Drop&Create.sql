SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eduardo Madrigal Marin
-- Create date: 
-- Description:	Deletes Owner with ChangeLog
-- =============================================
CREATE OR ALTER PROCEDURE SP_DropNCreate
	
AS
BEGIN
	BEGIN TRY

		BEGIN TRANSACTION
		SET QUOTED_IDENTIFIER ON
		SET ARITHABORT ON
		SET NUMERIC_ROUNDABORT OFF
		SET CONCAT_NULL_YIELDS_NULL ON
		SET ANSI_NULLS ON
		SET ANSI_PADDING ON
		SET ANSI_WARNINGS ON
		COMMIT

--Create tables
		BEGIN TRANSACTION
		

		DROP TABLE IF EXISTS dbo.DB1P_SelectedReceipts;
		CREATE TABLE dbo.DB1P_SelectedReceipts
			(
			ReceiptNumber INT,
			) ON [PRIMARY]
		DROP TABLE IF EXISTS dbo.DB1P_ChangeLog;
		CREATE TABLE dbo.DB1P_ChangeLog
			(
			Id INT NOT NULL IDENTITY (1, 1),
			IdEntityType INT NOT NULL,
			EntityId INT NOT NULL,
			InsertedAt DATETIME NOT NULL,
			InsertdBy VARCHAR(50) NOT NULL,
			InsertedFrom VARCHAR(20) NOT NULL,
			JsonBefore VARCHAR(500),
			JsonAfter VARCHAR(500)
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_EntityType;
		CREATE TABLE dbo.DB1P_EntityType
			(
			Id INT NOT NULL,
			Name VARCHAR(50)
			)  ON [PRIMARY]
		DROP TABLE IF EXISTS dbo.DB1P_PaidReceipts;
		CREATE TABLE dbo.DB1P_PaidReceipts
			(
			Id int NOT NULL,
			Id_ProofOfPayment int NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Disconnection;
		CREATE TABLE dbo.DB1P_Disconnection
			(
			Id int NOT NULL IDENTITY (1, 1),
			Id_ReconnectionReceipt int NOT NULL,
			Id_Property int NOT NULL,
			Date date NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Reconnection;
		CREATE TABLE dbo.DB1P_Reconnection
			(
			Id int NOT NULL IDENTITY (1, 1),
			Id_ReconnectionReceipt int NOT NULL,
			Id_Property int NOT NULL,
			Date date NOT NULL
			)  ON [PRIMARY]
		--aqui van las relaciones entre propiedades y corta y reconnecion
		DROP TABLE IF EXISTS dbo.DB1P_ConsumptionMov;
		CREATE TABLE dbo.DB1P_ConsumptionMov
			(
			Id int NOT NULL IDENTITY (1, 1),
			Id_MovType int NOT NULL,
			Id_Property int NOT NULL,
			Date Date NOT NULL,
			Description VARCHAR(100),
			AmountM3 int NOT NULL,
			ConsumptionReading int NOT NULL,
			NewAccumulatedM3 int NOT NULL,
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Percentage_CC;
		CREATE TABLE dbo.DB1P_Percentage_CC
			(
			Id int NOT NULL,
			PercentageValue REAL NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_MoratoryInterest_CC;
		CREATE TABLE dbo.DB1P_MoratoryInterest_CC
			(
			Id int NOT NULL,
			Amount money NOT NULL
			)  ON [PRIMARY]

		--TODO
		DROP TABLE IF EXISTS dbo.DB1P_Consumption_CC;
		CREATE TABLE dbo.DB1P_Consumption_CC
			(
			Id int NOT NULL,
			ValueM3 MONEY NOT NULL,
			MinValue MONEY NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Fixed_CC;
		CREATE TABLE dbo.DB1P_Fixed_CC
			(
			Id int NOT NULL,
			Amount money NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_CC_onProperties;
		CREATE TABLE dbo.DB1P_CC_onProperties
			(
			Id int NOT NULL IDENTITY (1, 1),
			Property_Id int NOT NULL,
			ChargeConcept_Id int NOT NULL,
			BeginDate date NOT NULL,
			EndDate date  NULL,
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_PropertiesUsers;
		CREATE TABLE dbo.DB1P_PropertiesUsers
			(
			Id int NOT NULL IDENTITY (1, 1),
			Property_Id int NOT NULL,
			User_Id int NOT NULL,
			CONSTRAINT AK_PropertyUsersIDs UNIQUE(Property_Id,User_Id),
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_PropertyOwners;
		CREATE TABLE dbo.DB1P_PropertyOwners
			(
			Id int NOT NULL IDENTITY (1, 1),
			Property_Id int NOT NULL,
			Owner_Id int NOT NULL,
			CONSTRAINT AK_PropertyOwnersIDs UNIQUE(Property_Id, Owner_Id),
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_LegalOwners;
		CREATE TABLE dbo.DB1P_LegalOwners
			(
			Id int NOT NULL,
			ResponsibleName varchar(50) NOT NULL,
			Resp_DocType_Id int NOT NULL,
			Resp_DocValue VARCHAR(30) NOT NULL,
			CONSTRAINT AK_Resp_DocValue UNIQUE(Resp_DocValue,Resp_DocType_Id),
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Owners;
		CREATE TABLE dbo.DB1P_Owners
			(
			Id int NOT NULL IDENTITY (1, 1),
			Name varchar(50) NOT NULL,
			DocType_Id int NOT NULL,
			DocValue VARCHAR(30) NOT NULL,
			CONSTRAINT AK_DocValue UNIQUE(DocValue,DocType_Id),
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Users;
		CREATE TABLE dbo.DB1P_Users
			(
			Id int NOT NULL IDENTITY (1, 1),
			Username varchar(50) NOT NULL,
			CONSTRAINT AK_Username UNIQUE(Username),
			Password varchar(50) NOT NULL,
			UserType bit NOT NULL,
			Active bit NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Doc_Id_Types;
		CREATE TABLE dbo.DB1P_Doc_Id_Types
			(
			Id int NOT NULL,
			Name varchar(50) NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_MovType;
		CREATE TABLE dbo.DB1P_MovType
			(
			Id int NOT NULL,
			Name VARCHAR(50) NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_ReconnectionReceipt;
		CREATE TABLE dbo.DB1P_ReconnectionReceipt
			(
			Id int NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_AP_Receipts;
		CREATE TABLE dbo.DB1P_AP_Receipts
			(
			Id int NOT NULL,
			IdMovement int NULL,
			MonthlyInterest money NOT NULL,
			Amortization money NOT NULL,
			PaymentTermsLeft int NOT NULL
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_Receipt;
		CREATE TABLE dbo.DB1P_Receipt
			(
			Id int NOT NULL IDENTITY (1, 1),
			Id_ChargeConcept int NOT NULL,
			Id_Property int NOT NULL,
			Date DATE NOT NULL,
			DueDate DATE,	
			Amount MONEY NOT NULL,
			Status TINYINT NOT NULL DEFAULT 0
			)  ON [PRIMARY]
			
		DROP TABLE IF EXISTS dbo.DB1P_Properties;
		CREATE TABLE dbo.DB1P_Properties
			(
			Id int NOT NULL IDENTITY (1, 1),
			Value money NOT NULL,
			Address varchar(100) NOT NULL,
			PropertyNumber int NOT NULL,
			CONSTRAINT AK_PropertyNumber UNIQUE(PropertyNumber),
			AccumulatedM3 int NOT NULL DEFAULT 0,
			AccumulatedLRM3 int NOT NULL DEFAULT 0,
			Active bit NOT NULL
			)  ON [PRIMARY]
		DROP TABLE IF EXISTS dbo.DB1P_ChargeConcepts;
		CREATE TABLE dbo.DB1P_ChargeConcepts
			(
			Id int NOT NULL,
			Name varchar(50) NOT NULL,
			MoratoryInterestRate real NOT NULL,
			ReciptEmisionDay tinyint NOT NULL,
			ExpirationDays tinyint NOT NULL,
			)  ON [PRIMARY]

		DROP TABLE IF EXISTS dbo.DB1P_ProofOfPayment;
		CREATE TABLE dbo.DB1P_ProofOfPayment
			(
			Id int NOT NULL IDENTITY (1, 1),
			Date DATE NOT NULL,
			TotalAmount MONEY NOT NULL,
			Active BIT NOT NULL DEFAULT 1
			)  ON [PRIMARY]



		DROP TABLE IF EXISTS dbo.DB1P_AP_Movements;
		CREATE TABLE dbo.DB1P_AP_Movements
			(
			Id int NOT NULL IDENTITY(1,1),
			IdAP int NOT NULL,
			IdMovType int NOT NULL,
			Amount money NOT NULL,
			MonthlyInterest money NOT NULL,
			PaymentTermsLeft int NOT NULL,
			NewBalance money NOT NULL,
			Date date NOT NULL,
			InsertedAt datetime NOT NULL
			)  ON [PRIMARY]
		

		DROP TABLE IF EXISTS dbo.DB1P_AP_MovementTypes;
		CREATE TABLE dbo.DB1P_AP_MovementTypes
			(
			Id int NOT NULL,
			Name varchar(100) NOT NULL
			)  ON [PRIMARY]
		

		DROP TABLE IF EXISTS dbo.DB1P_APs;
		CREATE TABLE dbo.DB1P_APs
			(
			Id int NOT NULL IDENTITY(1,1),
			IdProperty int NOT NULL,
			IdProofOfPayment int NOT NULL,
			InitialAmount money NOT NULL,
			Balance money NOT NULL,
			AnnualInterestRate decimal(4, 2) NOT NULL,
			PaymentTerms int NOT NULL,
			PaymentTermsLeft int NOT NULL,
			FeeValue money NOT NULL,
			InsertedAt datetime NOT NULL,
			UpdatedAt datetime NOT NULL
			)  ON [PRIMARY]
		

		
		COMMIT

		BEGIN TRANSACTION
		
		ALTER TABLE dbo.DB1P_ChangeLog ADD CONSTRAINT
			PK_DB1P_ChangeLog PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		ALTER TABLE dbo.DB1P_EntityType ADD CONSTRAINT
			PK_DB1P_Entity PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		ALTER TABLE dbo.DB1P_Receipt ADD CONSTRAINT
			PK_DB1P_Receipt PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_ReconnectionReceipt ADD CONSTRAINT
			PK_DB1P_ReconnectionReceipt PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Reconnection ADD CONSTRAINT
			PK_Reconnection PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Disconnection ADD CONSTRAINT
			PK_Disconnection PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_ProofOfPayment ADD CONSTRAINT
			PK_DB1P_ProofOfPayment PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_PaidReceipts ADD CONSTRAINT
			PK_PaidReceipts PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_MovType ADD CONSTRAINT
			PK_DB1P_MovType PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		ALTER TABLE dbo.DB1P_ConsumptionMov ADD CONSTRAINT
			PK_DB1P_ConsumptionMov PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Users ADD CONSTRAINT
			PK_DB1P_Users PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Users SET (LOCK_ESCALATION = TABLE) --Cuando hace un querry hace lock a toda la tabla en vez de solo una parte para ser mas eficiente(salia default)

		ALTER TABLE dbo.DB1P_Doc_Id_Types ADD CONSTRAINT
			PK_DB1P_Doc_Id_Types PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Doc_Id_Types SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_Owners ADD CONSTRAINT
			PK_DB1P_Owners PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		ALTER TABLE dbo.DB1P_Properties ADD CONSTRAINT
			PK_DB1P_Properties PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_AP_MovementTypes ADD CONSTRAINT
			PK_DB1P_AP_MovementTypes PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_APs ADD CONSTRAINT
			PK_DB1P_APs PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


		ALTER TABLE dbo.DB1P_AP_Movements ADD CONSTRAINT
			PK_DB1P_AP_Movements PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_AP_Receipts ADD CONSTRAINT
			PK_DB1P_AP_Receipts PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]



		--Foreign Keys

		ALTER TABLE dbo.DB1P_ChangeLog ADD CONSTRAINT
			FK_DB1P_ChangeLog_DB1P_EntityType FOREIGN KEY
			(
			IdEntityType
			) REFERENCES dbo.DB1P_EntityType
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_PaidReceipts ADD CONSTRAINT
			FK_DB1P_PaidReceipts_DB1P_ProofOfPayment FOREIGN KEY
			(
			Id_ProofOfPayment
			) REFERENCES dbo.DB1P_ProofOfPayment
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_PaidReceipts ADD CONSTRAINT
			FK_DB1P_PaidReceipts_DB1P_Receipt FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_Receipt
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_Disconnection ADD CONSTRAINT
			FK_DB1P_Disconnection_DB1P_Properties FOREIGN KEY
			(
			Id_Property
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_Disconnection ADD CONSTRAINT
			FK_DB1P_Disconnection_DB1P_ReconnectionReceipt FOREIGN KEY
			(
			Id_ReconnectionReceipt
			) REFERENCES dbo.DB1P_ReconnectionReceipt
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_Reconnection ADD CONSTRAINT
			FK_DB1P_Reconnection_DB1P_Properties FOREIGN KEY
			(
			Id_Property
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_Reconnection ADD CONSTRAINT
			FK_DB1P_Reconnection_DB1P_ReconnectionReceipt FOREIGN KEY
			(
			Id_ReconnectionReceipt
			) REFERENCES dbo.DB1P_ReconnectionReceipt
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_ReconnectionReceipt ADD CONSTRAINT
			FK_DB1P_ReconnectionReceipt_DB1P_Receipt FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_Receipt
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_Owners ADD CONSTRAINT
			FK_DB1P_Owners_DB1P_Doc_Id_Types FOREIGN KEY
			(
			DocType_Id
			) REFERENCES dbo.DB1P_Doc_Id_Types
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_Owners SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_LegalOwners ADD CONSTRAINT
			PK_DB1P_LegalOwners PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_LegalOwners ADD CONSTRAINT
			FK_DB1P_LegalOwners_DB1P_Owners FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_Owners
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_LegalOwners ADD CONSTRAINT
			FK_DB1P_LegalOwners_DB1P_Doc_Id_Types FOREIGN KEY
			(
			Resp_DocType_Id
			) REFERENCES dbo.DB1P_Doc_Id_Types
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_LegalOwners SET (LOCK_ESCALATION = TABLE)


		ALTER TABLE dbo.DB1P_Properties SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_PropertiesUsers ADD CONSTRAINT
			PK_DB1P_PropertiesUsers PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_PropertiesUsers ADD CONSTRAINT
			FK_DB1P_PropertiesUsers_DB1P_Users FOREIGN KEY
			(
			User_Id
			) REFERENCES dbo.DB1P_Users
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_PropertiesUsers ADD CONSTRAINT
			FK_DB1P_PropertiesUsers_DB1P_Properties FOREIGN KEY
			(
			Property_Id
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_PropertiesUsers SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_PropertyOwners ADD CONSTRAINT
			PK_DB1P_PropertyOwners PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_PropertyOwners ADD CONSTRAINT
			FK_DB1P_PropertyOwners_DB1P_Properties FOREIGN KEY
			(
			Property_Id
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_PropertyOwners ADD CONSTRAINT
			FK_DB1P_PropertyOwners_DB1P_Owners FOREIGN KEY
			(
			Owner_Id
			) REFERENCES dbo.DB1P_Owners
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_PropertyOwners SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_ChargeConcepts ADD CONSTRAINT
			PK_DB1P_ChargeConcepts PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_ChargeConcepts SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_CC_onProperties ADD CONSTRAINT
			PK_DB1P_CC_onProperties PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_CC_onProperties ADD CONSTRAINT
			FK_DB1P_CC_onProperties_DB1P_ChargeConcepts FOREIGN KEY
			(
			ChargeConcept_Id
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_CC_onProperties ADD CONSTRAINT
			FK_DB1P_CC_onProperties_DB1P_Properties FOREIGN KEY
			(
			Property_Id
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_CC_onProperties SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_Percentage_CC ADD CONSTRAINT
			PK_DB1P_Percentage_CC PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Percentage_CC ADD CONSTRAINT
			FK_DB1P_Percentage_CC_DB1P_ChargeConcepts FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_Percentage_CC SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_MoratoryInterest_CC ADD CONSTRAINT
			PK_DB1P_MoratoryInterest_CC PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_MoratoryInterest_CC ADD CONSTRAINT
			FK_DB1P_MoratoryInterest_CC_DB1P_ChargeConcepts FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_MoratoryInterest_CC SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_Consumption_CC ADD CONSTRAINT
			PK_DB1P_Consumption_CC PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Consumption_CC ADD CONSTRAINT
			FK_DB1P_Consumption_CC_DB1P_ChargeConcepts FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_Consumption_CC SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_Fixed_CC ADD CONSTRAINT
			PK_DB1P_Fixed_CC PRIMARY KEY CLUSTERED 
			(
			Id
			) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

		ALTER TABLE dbo.DB1P_Fixed_CC ADD CONSTRAINT
			FK_DB1P_Fixed_CC_DB1P_ChargeConcepts FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_ConsumptionMov ADD CONSTRAINT
			FK_DB1P_ConsumptionMov_DB1P_MovType FOREIGN KEY
			(
			Id_MovType
			) REFERENCES dbo.DB1P_MovType
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_ConsumptionMov ADD CONSTRAINT
			FK_DB1P_ConsumptionMov_DB1P_Properties FOREIGN KEY
			(
			Id_Property
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_Fixed_CC SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_Receipt ADD CONSTRAINT
			FK_DB1P_Receipt_DB1P_Properties FOREIGN KEY
			(
			Id_Property
			) REFERENCES dbo.DB1P_Properties
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
		ALTER TABLE dbo.DB1P_Receipt ADD CONSTRAINT
			FK_DB1P_Receipt_DB1P_ChargeConcepts FOREIGN KEY
			(
			Id_ChargeConcept
			) REFERENCES dbo.DB1P_ChargeConcepts
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_AP_Movements ADD CONSTRAINT
			FK_DB1P_AP_Movements_DB1P_APs FOREIGN KEY
			(
			IdAP
			) REFERENCES dbo.DB1P_APs
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 
			
		ALTER TABLE dbo.DB1P_AP_Movements SET (LOCK_ESCALATION = TABLE)
		ALTER TABLE dbo.DB1P_Receipt SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_AP_Movements ADD CONSTRAINT
			FK_DB1P_AP_Movements_DB1P_AP_MovementTypes FOREIGN KEY
			(
			IdMovType
			) REFERENCES dbo.DB1P_AP_MovementTypes
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_Receipt SET (LOCK_ESCALATION = TABLE)

		ALTER TABLE dbo.DB1P_AP_Receipts ADD CONSTRAINT
			FK_DB1P_AP_Receipts_DB1P_Receipt FOREIGN KEY
			(
			Id
			) REFERENCES dbo.DB1P_Receipt
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 



		ALTER TABLE dbo.DB1P_AP_Receipts ADD CONSTRAINT
			FK_DB1P_AP_Receipts_DB1P_AP_Movements FOREIGN KEY
			(
			IdMovement
			) REFERENCES dbo.DB1P_AP_Movements
			(
			Id
			) ON UPDATE  NO ACTION 
			ON DELETE  NO ACTION 

		ALTER TABLE dbo.DB1P_AP_Receipts SET (LOCK_ESCALATION = TABLE)

		DROP TABLE IF EXISTS dbo.DB1P_ConfigurationTable;
		CREATE TABLE dbo.DB1P_ConfigurationTable
			(
			Id INT NOT NULL IDENTITY (1, 1),
			AnnualInterestRate decimal(4,2) DEFAULT 20.0
			)  ON [PRIMARY]
		
		COMMIT

		INSERT INTO DB1P_ConfigurationTable (AnnualInterestRate) VALUES (20.0)
		
	END TRY
	BEGIN CATCH
		RETURN @@Error * -1
	END CATCH
			
END