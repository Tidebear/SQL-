/*==============================================================*/
/* DBMS name:      ADABAS D                                     */
/* Created on:     2019/7/1 16:38:51                            */
/*==============================================================*/


drop table ������;

drop table ���ÿ���;

drop table ������;

drop table ��Ϣ��;

drop table ȡ���;

drop table ����;

drop table ��ʧ����;

drop table ����Ա;

drop table �ɷ�Ͷ����¼��;

drop table �˻���;

drop table �����;

drop table ת�ʵ���;

drop table �����¼��;

drop table ��������;

/*==============================================================*/
/* Table: ������                                                  */
/*==============================================================*/
create table ������ (
������ varchar(10) not null,
���� varchar(20),
�������� varchar(50) not null,
����ҵ�� varchar(50) not null,
����ע varchar(50),
primary key (������)
);

/*==============================================================*/
/* Table: ���ÿ���                                                  */
/*==============================================================*/
create table ���ÿ��� (
���� varchar(20) not null,
���� varchar(20),
�ֿ������� varchar(10) not null,
����� money not null,
���ö�� money not null,
����״̬ varchar(10) not null,
���ÿ���ע varchar(50),
primary key (����)
);

alter table ���ÿ���
   add default(5000) for ���ö��

/*==============================================================*/
/* Table: ������                                                   */
/*==============================================================*/
create table ������ (
�������֤�� varchar(18) not null,
�������� varchar(10) not null,
������ϵ��ʽ varchar(20),
������Ƭ image,
�������ע varchar(50),
primary key (�������֤��)
);

/*==============================================================*/
/* Table: ��Ϣ��                                                   */
/*==============================================================*/
create table ��Ϣ�� (
��Ϣ��� varchar(10) not null,
���� varchar(20) not null,
���� float not null,
���� int not null check(����>0),
primary key (��Ϣ���)
);

go
insert into ��Ϣ��(��Ϣ���,����,����,����)values('1001','���ڴ��',0.0005,30)
insert into ��Ϣ��(��Ϣ���,����,����,����)values('1002','���ڴ��',0.00045,60)
insert into ��Ϣ��(��Ϣ���,����,����,����)values('1003','���ڴ��',0.00065,180)
insert into ��Ϣ��(��Ϣ���,����,����,����)values('1004','���ڴ��',0.0007,360)
 


/*==============================================================*/
/* Table: ȡ���                                                  */
/*==============================================================*/
create table ȡ��� (
ȡ��� int not null identity(1,1),
���� varchar(20),
���� varchar(20),
ȡ���� money not null,
��Ϣ money not null,
Ӧ�ý�� money not null,
ȡ������ date not null,
�˻���� money not null,
primary key (ȡ���)
);

alter table ȡ���
  drop column ȡ������
  select * from ȡ���
   drop table ȡ���

/*==============================================================*/
/* Table: ����                                                  */
/*==============================================================*/
create table ���� (
���� int not null identity(1,1),
���� varchar(20),
���� varchar(20),
����� money not null,
������� date not null default(getdate()),
������� varchar(20) not null,
primary key (����)
);

/*==============================================================*/
/* Table: ��ʧ����                                                  */
/*==============================================================*/
create table ��ʧ���� (
��� money not null,
��ʧ���� date not null default(getdate()),
��ʧ���� int not null identity(1,1),
���� varchar(20),
���� varchar(20),
primary key (��ʧ����)
);

/*==============================================================*/
/* Table: ����Ա                                                   */
/*==============================================================*/
create table ����Ա (
���� varchar(20) not null,
����Ա���� varchar(10) not null,
����Ա���� integer not null,
����Ա���� varchar(10) not null,
����Ա���֤ varchar(18) not null,
����Ա��ϵ��ʽ varchar(20),
����Աסַ varchar(80),
����Ա��Ƭ image,
����Ա��ע varchar(50),
primary key (����)
);

/*==============================================================*/
/* Table: �ɷ�Ͷ����¼��                                               */
/*==============================================================*/
create table �ɷ�Ͷ����¼�� (
Ͷ����� int not null identity(1,1),
���� varchar(20),
Ͷ������ varchar(50) not null,
Ͷ�������� varchar(10) not null,
Ͷ�������֤�� varchar(18) not null,
����ʱ�� date not null,
Ͷ����� money not null,
Ͷ����ע varchar(50),
primary key (Ͷ�����)
);

/*==============================================================*/
/* Table: �˻���                                                   */
/*==============================================================*/
create table �˻��� (
���� varchar(20) not null,
�������֤�� varchar(18),
���� varchar(10) not null,
��� money not null,
�������� date not null ,
������ varchar(50) not null,
�Ƿ��� varchar(6) not null,
��ʧ�˻� varchar(6) not null ,
�û���ע varchar(50),
primary key (����)
);

/*==============================================================*/
/* Table: �����                                                   */
/*==============================================================*/
create table ����� (
������ int not null identity(1,1),
���� varchar(20),
���������� varchar(10) not null,
���������֤�� varchar(18) not null,
��������ϵ��ʽ varchar(20) not null,
������ money not null,
�������� varchar(20) not null,
�������� float not null,
�ſ����� date not null ,
�������� date not null,
ÿ��Ӧ�� money not null,
���ע varchar(50),
primary key (������)
);

/*==============================================================*/
/* Table: ת�ʵ���                                                  */
/*==============================================================*/
create table ת�ʵ��� (
ת�˵��� int not null identity(1,1),
���� varchar(20),
���� varchar(20),
ת������ varchar(20) not null,
ת�뻧�� varchar(20) not null,
ת�˽�� money not null,
ת������ date not null default(getdate()),
������ money not null,
primary key (ת�˵���)
);

/*==============================================================*/
/* Table: �����¼��                                                 */
/*==============================================================*/
create table �����¼�� (
������ int not null identity(1,1),
���� varchar(20),
������ varchar(10),
�������� date not null default(getdate()),
������ money not null,
�Ƿ�ΥԼ varchar(6) not null default '��',
primary key (������)
);

/*==============================================================*/
/* Table: ��������                                                  */
/*==============================================================*/
create table �������� (
�������� int not null identity(1,1),
���� varchar(20),
���� varchar(20),
����ǰ��� money not null,
�������� date not null default(getdate()),
primary key (��������)
);

drop table ��������

alter table ������
   add constraint  FK_������_����_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ���ÿ���
   add constraint FK_���ÿ���_ӵ�п�_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ȡ���
   add constraint FK_ȡ���_RELA_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table ȡ���
   add constraint FK_ȡ���_ȡ��_�˻��� foreign key(����)
      references �˻��� (����) on delete cascade
      --on delete restrict;

alter table ȡ���
   drop constraint FK_ȡ���_ȡ��_�˻��� 

alter table ����
   add constraint FK_����_���_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ����
   add constraint FK_����_������_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table ȡ���
   add constraint FK_ȡ���_ȡ�����_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table ��ʧ����
   add constraint FK_��ʧ����_��ʧ_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ��ʧ����
   add constraint FK_��ʧ����_��ʧ����_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table �ɷ�Ͷ����¼��
   add constraint FK_�ɷ�Ͷ��_Ͷ��_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table �˻���
   add constraint FK_�˻���_ӵ���˻�_������ foreign key(�������֤��)
      references ������ (�������֤��)
      --on delete restrict;

alter table �����
   add constraint FK_�����_����_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ת�ʵ���
   add constraint FK_ת�ʵ���_ת��_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ת�ʵ���
   add constraint FK_ת�ʵ���_ת�˲���_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table �����¼��
   add constraint FK_�����¼_�����_����� foreign key(������)
      references ����� (������)
      --on delete restrict;

alter table �����¼��
   add constraint FK_�����¼_����_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ��������
   add constraint FK_��������_����_�˻��� foreign key(����)
      references �˻��� (����)
      --on delete restrict;

alter table ��������
   add constraint FK_��������_��������_����Ա foreign key(����)
      references ����Ա (����)
      --on delete restrict;

alter table ȡ���
   add default(getdate()) for ȡ������ 

alter table �˻���
   add default(getdate()) for ��������

alter table ������
   add  default(0xFFFFFFFF) for ������Ƭ

alter table ����Ա
   add  default(0xFFFFFFFF) for ����Ա��Ƭ

alter table �˻���
  add default('��') for �Ƿ���

alter table ����
   add check(������� in('���ڴ��','���ڴ��'))

alter table �ɷ�Ͷ����¼��
  add constraint �籣���� check(Ͷ������ in('��������','ҽ�Ʊ���','���ٱ���'))

--������λ�����û���С����ֻ���û���Ȩ�ޣ���С�죨ֻ���û���Ȩ�ޣ�
go
exec sp_addlogin 'С��','1314250'
exec sp_addlogin 'С��','1314520'

go
use ���ϴ������й���ϵͳ
exec sp_grantdbaccess 'С��','�û�С��'
exec sp_grantdbaccess 'С��','�û�С��'

--������λ������Ա��������Ȩ����ߣ�����죨����Ȩ�ޣ�
go
exec sp_addlogin '����','886110'
exec sp_addlogin '���','110886'

go
use ���ϴ������й���ϵͳ
exec sp_grantdbaccess '����','�����ߴ���'
exec sp_grantdbaccess '���','�����ߴ��'

go--���������˺�
create proc createSaving
@�������֤��  varchar(18),
@��������      varchar(10),
@������ϵ��ʽ  varchar(20),
@�������ע  varchar(50)
as
begin
   insert into ������(�������֤��,��������,������ϵ��ʽ,�������ע) values(@�������֤��,@��������,@������ϵ��ʽ,@�������ע)
end

exec createSaving '35082219981012','С��','18059828960','���û�'
exec createSaving '35082219981112','С��','18659728960','���û�'
exec createSaving '35082219881112','С��','17659728960','���û�'
exec createSaving '35082219990709','С��','18020627895','���û�'
select * from ������

go--�˻�����
create proc createAccount
@����    varchar(20),
@�������֤��  varchar(18),
@����    varchar(10),
@���    money,
@������  varchar(50),
@�û���ע varchar(50)
as
begin
  if not exists(select * from ������ where �������֤�� = @�������֤��)
    begin
      print'�����ڸô��������ȳ�Ϊ����!'
	  rollback
    end
  else
    insert into �˻��� (����,�������֤��,����,���,������,�û���ע)values(@����,@�������֤��,@����,@���,@������,@�û���ע)
end

exec createAccount '201721121019','35082219981012','07091012','1000','����ʡ�����н�������','�¿����û�'
exec createAccount '201721121020','35082219981112','1012llq','1000','����ʡ�����н�������','�¿����û�'
exec createAccount '201821121020','35082219981112','hhhllq','10000','����ʡ�����н�������','�¿����û�'
exec createAccount '201821121029','35082219981112','h85llq','10000','����ʡ�����й�������','�¿����û�'
exec createAccount '211210198548','35082219990709','liadhsj','10000','����ʡ�����й�������','�¿����û�' 
select * from �˻���

select * from ������
select * from ����Ա
go--��Ϣ����
create proc ����
@����   nvarchar(20),
@���֤ nvarchar(20),
@����   nvarchar(10)
as
begin
--�������ݿ�����Կ
--go
if exists(select * from ������ where �������֤�� = @���֤)
begin
   if exists(select * from ����Ա where ���� = @����)
    begin
	create table ������Ϣ(
	���֤   varbinary(5000),
	����     nvarchar(10)
	);
--alter table ���� add ���� nvarchar(10)
--select ���֤ = �������֤��,���� = �������� into ������Ϣ from ������ 
	CREATE MASTER KEY ENCRYPTION BY PASSWORD = '123456'; 

--����֤�飬ʹ�ø����ݿ�����Կ����
--go
	CREATE CERTIFICATE TestCert with SUBJECT = '123456'

--����һ���Գ���Կ
--GO
	CREATE SYMMETRIC KEY TestSymmetric WITH ALGORITHM = AES_256
	ENCRYPTION BY CERTIFICATE TestCert 
--GO

--��������
	OPEN SYMMETRIC KEY TestSymmetric DECRYPTION BY CERTIFICATE TestCert;
	INSERT INTO ������Ϣ(���֤,����) values(ENCRYPTBYKEY(Key_Guid(N'TestSymmetric'), @���֤),@����);
	CLOSE SYMMETRIC KEY TestSymmetric;
--GO

--��������
--GO
	--OPEN SYMMETRIC KEY TestSymmetric DECRYPTION BY CERTIFICATE TestCert;
	--SELECT ����, CAST(DecryptByKey(���֤) as varchar(100)) ���ܽ�� FROM ������Ϣ;
	--CLOSE SYMMETRIC KEY TestSymmetric;
	end
	else
     begin
       print'�����ڴ˹���Ա��'
       rollback
     end
  end
else
     begin
       print'�����ڴ˴����û���'
       rollback
     end
end

exec ���� '20168851159','35082219881112','С��'
select * from ������Ϣ
drop proc ����


go--����Ա����
create proc createAdmin
@����        varchar(20),
@����Ա����  varchar(10),
@����Ա����  integer,
@����Ա����  varchar(10),
@����Ա���֤ varchar(18),
@����Ա��ϵ��ʽ varchar(20),
@����Աסַ   varchar(80),
@����Ա��ע   varchar(50)
as
begin
  insert into ����Ա(����,����Ա����,����Ա����,����Ա����,����Ա���֤,����Ա��ϵ��ʽ,����Աסַ,����Ա��ע)values(@����,@����Ա����,@����Ա����,@����Ա����,@����Ա���֤,@����Ա��ϵ��ʽ,@����Աסַ,@����Ա��ע)
  exec ����ԱȨ�޸��� @����,@����Ա����
end
 
 exec createAdmin '20178859998','gly110',1,'����','350822199110125565','13055853008','����ʡ�������ƶ�¥56��','1������Ա'
 exec createAdmin '20168851159','gly007',2,'���','350822199210123369','13055842292','����ʡ������ܿ�ϻ�԰12��','2������Ա'
 select * from ����Ա
 drop proc createAdmin

go--���(ֻ��ѡ�����ִ�ʽ�����ڴ����ڴ�)
create proc	Deposit
@���� varchar(20),
@���� varchar(20),
@����� money,
@������� varchar(20),
@�˻�����    varchar(10)
as
begin
   if not exists(select * from ����Ա where ���� = @����)
     begin
	   print'�ù�����Ա�����ڣ���ѡ�����Ĺ�����ԱΪ�����'
	   rollback
	 end
	else
   begin
	  if not exists(select * from �˻��� where ���� = @����)
	    begin
		   print'���˻�������'
		   rollback
		end
	  else
	    begin
		   if not exists(select * from �˻��� where ���� = @�˻�����)
		     begin
			    print'��������������������룡'
				rollback
		     end
		   else
		     begin
			    insert into ����(����,����,�����,�������)values(@����,@����,@�����,@�������)
				update �˻���
				set ��� = @����� + ���  
				where ���� = @���� and ���� = @�˻����� 
			 end
		 end
	end
end

exec Deposit '20168851159','211210198548','5000','���ڴ��','liadhsj'
select * from ����
select * from �˻���
drop proc Deposit

go--����
create proc deleteAccount
@����     varchar(20),
@����    varchar(10),
@����    varchar(20)
as
begin
   if not exists(select * from �˻��� where ���� = @���� and ���� = @����)
     begin
	   print'���˻������ڣ���'
	   rollback 
	 end

   else
     begin
	 if exists(select * from ����Ա where ���� = @���� and ����Ա���� = 1)
	   begin
	     --select * from ��������
		 declare @����ǰ��� money
		 select @����ǰ��� = ��� from �˻��� where ���� = @����
	     insert into ��������(����,����,����ǰ���) values(@����,@����,@����ǰ���)
	     delete from �˻��� where ���� = @���� and ���� = @����
	   end
	  else
	    begin
		  print'���Ĺ���Ա�ȼ��ϵͣ��޷����иò�����'
		end
	 end
end
exec deleteAccount '201721121020','1012llq','20178859998'
select * from ��������
drop proc deleteAccount

go--��ʧ
create proc reportLoss
@����    varchar(20),
@����    varchar(10),
@����    varchar(20)
as
begin
if exists(select * from ����Ա where ���� = @���� and ����Ա���� >= 2)
 begin
  update �˻���
  set ��ʧ�˻� = '��'
  where ���� = @���� and ���� = @����
  declare @��� money
  select @��� = ��� from �˻��� where ���� = @���� 
  insert into ��ʧ����(���,����,����) values(@���,@����,@����)
 end
else
 begin
  print'���ĵȼ����������ܴ���˲�����'
  rollback
 end
end

exec reportLoss '201821121029','h85llq','20168851159'
select  * from ��ʧ����
select  * from �˻���
drop proc reportLoss

go--ȡ����ʧ
create proc cancleReportLoss
@����    varchar(20),
@����    varchar(10),
@����    varchar(20)
as
begin
if exists(select * from ����Ա where ���� = @���� and ����Ա���� >= 2)
  begin
      update �˻���
      set ��ʧ�˻� = '��'
      where ���� = @���� and ���� = @����
      delete from ��ʧ���� where ���� = @����
  end
end
drop proc cancleReportLoss


go--�޸Ĺ���Ա����
create proc modifyPassword
@����        varchar(20),
@����Ա����  varchar(10),
@����Ա���֤ varchar(18)
as
begin
  update ����Ա
  set ����Ա���� = @����Ա����
  where ���� = @���� and ����Ա���֤ = @����Ա���֤
end

exec modifyPassword '','',''

go--��֤����Ա����
create function checkPassword(@���� varchar(20),@���� varchar(10))
returns int
as
begin
  declare @password int
    begin
      select @password = ����Ա���� from ����Ա where ���� = @����
    end
  if(@���� = @password)
    begin
	  return 1
	end
   else
   begin
      return 0
   end   
 return 0
end

go--�жϹ���Ա���𣨽���߼������ܵı��룩
create function checkManagerlevel(@���� varchar(20))
returns int as
begin
declare @level int
begin
    select @level=����Ա���� from ����Ա
    where ����=@����
end
return @level
end


go--ȡ��
create procedure ȡ�����
	@���� varchar(20),
	@���� varchar(20),
	@���� varchar(10),
	@��� money
as
begin

	declare 
			@��� money,
			@��Ϣ money,
			@ȡ��ʱ��  date
	set @ȡ��ʱ�� = getdate()
	if(not exists (select * from ����Ա where @���� = ����))
		begin
			print'�޴˹���Ա'
			return
		end
	if(not exists (select * from �˻��� where @����=����))
		begin
			print'�޴��˻�'
			return
		end
	else
		begin
			if((select ���� from �˻��� where @����=����)!= @����)
				begin
					print'�������'
					return
				end
			else if ((select ��ʧ�˻� from �˻��� where @���� = ����) = '��')
				begin
					print'���˻��ѹ�ʧ'
					return
				end
			else if((select ��� from �˻��� where @���� = ����) < @���)
				begin
					print'����'
					return
				end
			else 
				begin
					set @��Ϣ = dbo.calculateInterest(@����)
					set @��� = (select ��� from �˻��� where ���� = @����)
					set @��� = @���+@��Ϣ-@���
					update �˻���
					set ��� = @���
					where ���� = @����
					insert into ȡ���(����,����,ȡ����,��Ϣ,Ӧ�ý��,ȡ������,�˻����)
					values(@����,@����,@���,@��Ϣ,@���+@��Ϣ,@ȡ��ʱ��,@���)
					print'ȡ��ɹ�'
				end
		end

end


exec ȡ����� '20168851159','211210198548','liadhsj',10000
exec ȡ����� 'sadsa','201721121019','07091012',11
exec ȡ����� '20168851159','dagare','07091012',11
exec ȡ����� '20168851159','201721121019','fadgfsg',11
exec ȡ����� '20168851159','201721121019','07091012',110000
exec ȡ����� '20178859998','201821121020','hhhllq',1000
select * from ȡ���
select * from �˻���
select * from ��Ϣ��
select * from ����Ա
drop procedure ȡ�����

go--��Ϣ
create function calculateInterest(@id varchar(20))
returns money as
begin

declare @interest money,@starttime datetime,@type nvarchar(4),@deposit float,@durtime int,@save money
begin
	select @starttime=�������,@type=������� from ���� where ����=@id
	select @deposit=����,@durtime=���� from ��Ϣ�� where ����=@type
	  if(datediff(m,@starttime,GETDATE())>=@durtime)

        begin

            select @save=����� from ���� where ����=@id

            set @interest=power((1+@deposit),(@durtime/12))-@save

        end

    else

        begin

            return 0

        end

end

return @interest

end

select ��Ϣ=dbo.calculateInterest('201721121019')

go--ת��
create procedure ת�ʲ���
	@���� varchar(20),
	@���� varchar(20),
	@���� varchar(20),
	@ת�뻧�� varchar(20),
	@��� money
as
	
	begin
	declare 
			@��� money,
			@��Ϣ money,
			@������ money
	set @������ = @��� * 0.001
	if(not exists (select * from ����Ա where @���� = ����))
		begin
			print'�޴˹���Ա'
			return
		end
	if(not exists (select * from �˻��� where @����=����))
		begin
			print'�޴��˻�'
			return
		end
	if(not exists (select * from �˻��� where @ת�뻧��=����))
		begin
			print'��ת���˻�'
			return
		end
	else
		begin
			if((select ���� from �˻��� where @����=����)!= @����)
				begin
					print'�������'
					return
				end
			else if ((select ��ʧ�˻� from �˻��� where @���� = ����) = '��')
				begin
					print'���˻��ѹ�ʧ'
					return
				end
			else if((select ��ʧ�˻� from �˻��� where @ת�뻧�� = ����) = '��')
				begin
					print'Ŀ���˻��ѹ�ʧ'
					return
				end
			else if((select ��� from �˻��� where @���� = ����) < (@���-@������))
				begin
					print'����'
					return
				end
			else 
				begin
					set @��Ϣ = dbo.calculateInterest(@����)
					set @��� = (select ��� from �˻��� where ���� = @����)
					set @��� = @���+@��Ϣ-@���-@������
					update �˻���
					set ��� = @���
					where ���� = @����
					update �˻���
					set ��� = ���  + @���
					where ����=@ת�뻧��
					insert into ת�ʵ���(����,����,ת������,ת�뻧��,ת�˽��,������)
					values(@����,@����,@����,@ת�뻧��,@���,@������)
					print'ת�ʳɹ�'
				end
		end
	end
go
drop proc ת�ʲ���

exec  ת�ʲ��� '20178859998','201821121029','h85llq','211210198548',5000
exec  ת�ʲ��� '432332','201721121019','07091012','201721121020',22
exec  ת�ʲ��� '20178859998','324234','07091012','201721121020',22
exec  ת�ʲ��� '20178859998','201721121019','0709132432012','201721121020',22
exec  ת�ʲ��� '20178859998','201721121019','07091012','32432',22
exec  ת�ʲ��� '20178859998','201721121019','07091012','201721121020',100000
select * from �˻���
select * from ת�ʵ���

select * from �˻���
go--�ж��˻��Ƿ��ʧ
create function checkAccount(@���� varchar(20))
returns nvarchar(6) 
as
begin
declare @state nvarchar(6)
begin
    select @state=��ʧ�˻� from �˻���
    where ����=@����
end
if(@state='��')
    begin
        return '��'
    end
else if(@state='��')
    begin
        return '��'
    end
return 0
end

drop function checkAccount
select �Ƿ��ʧ = dbo.checkAccount('201721121020')

go--�ж��˻��Ƿ����
create function judgeexist(@���� varchar(20))
returns nvarchar(6) 
as
begin
declare @idn varchar(20)
set @idn=(select ���� from �˻��� where ����=@����)
if(@idn is not null)
    begin
        return '����'
    end
return 0
end
select �˻��Ƿ���� = dbo.judgeexist('201721121020')

go--��ӡ�����ϸ��
create procedure printdepositdetail 
@���� varchar(20) 
as
select * from ����
where ����=@����
exec printdepositdetail '201721121019'

go--��ӡȡ����ϸ��
create procedure printdrawdetail 
@���� varchar(20) 
as
select * from ȡ���
where ����=@����

go--��ӡת����ϸ��
create procedure printtransdetail 
@���� varchar(20) as
select * from ת�ʵ���
where ת������=@����
exec printtransdetail '201721121019'
select * from ת�ʵ���


go--�޸Ĵ�����ϵ��ʽ
create procedure altercontact 
@�������֤���� varchar(18),
@��ϵ��ʽ varchar(20) 
as
update ������
set ������ϵ��ʽ=@��ϵ��ʽ
where �������֤��=@�������֤����
select * from ������

go--���ÿ�����
create proc createCreditAccount
@���� varchar(20),
@���� varchar(20),
@�ֿ������� varchar(10),
@����״̬ varchar(10),
@���ÿ���ע varchar(50)
as
begin
   if exists(select * from �˻��� where ���� = @���� )
      begin
	    declare @��� money
		select @��� = ��� from �˻��� where ���� = @����
		insert into ���ÿ���(����,����,�ֿ�������,�����,����״̬,���ÿ���ע) values(@����,@����,@�ֿ�������,@���,@����״̬,@���ÿ���ע)
	  end
	else
	  begin
	    print'û�д��û���'
		rollback
	  end
end 
exec createCreditAccount '6237145698852','201821121020','С��','��������','���û���ͨ���ÿ�'
exec createCreditAccount '6237145675852','201821121020','С��','��������','���û���ͨ���ÿ�'
select * from ���ÿ���
drop proc createCreditAccount

go--���ÿ�����޸�
create proc correctCreditLimit
@���� nvarchar(20),
@���� nvarchar(20),
@��� money
as
begin
  if not exists(select * from ���ÿ��� where ���� = @����)
     begin
	   print'���ÿ������ڣ�'
	   rollback
	 end
   if exists(select * from ����Ա where ���� = @���� and ����Ա���� = 1)
     begin
	   update ���ÿ���
	   set ���ö�� = @���
	   where ���� = @����
	 end
	else
	  begin
	    print'��û���޸Ķ�ȵ�Ȩ��'
		rollback
	  end
end
exec correctCreditLimit '6237145675852','20178859998','50000'
select * from ���ÿ���
drop proc correctCreditLimit

go--����
create proc createLoan
@���� varchar(20),
@���������� varchar(10),
@���������֤�� varchar(18),
@��������ϵ��ʽ varchar(20),
@������ money ,
@�������� varchar(20),
@�ſ����� date,
@�������� date ,
@���ע varchar(50)
as
--select * from �����
begin
   if not exists(select * from ������ where �������� = @���������� and �������֤�� = @���������֤��)
      begin
	    print'û�иô�����Ϣ���޷����'
		rollback
	  end
   else
      begin
	    if not exists(select * from �˻��� where ���� = @����)
		   begin
		      print'����ע��һ���˻���'
		   end
		else
		   begin
		      declare @cost money,@��������  float
		      if(@������ < =10000)
		         begin
				   set  @�������� = 0.005
				   set @cost = datediff(MM,@�ſ�����,@��������) * @�������� * @������
				 end
			  if(@������ >10000 and @������ <= 100000)
			     begin
				   set  @�������� = 0.004
				   set @cost = datediff(MM,@�ſ�����,@��������) * @�������� * @������
				 end
			  else
			     begin
				   set  @�������� = 0.003
				   set @cost = datediff(MM,@�ſ�����,@��������) * @�������� * @������
			     end
		      insert into �����(����,����������,���������֤��,��������ϵ��ʽ,������,��������,��������,�ſ�����,��������,ÿ��Ӧ��,���ע)values(@����,@����������,@���������֤��,@��������ϵ��ʽ,@������,@��������,@��������,@�ſ�����,@��������,@cost,@���ע)
		   end
	  end
end
exec createLoan '201821121020','С��','35082219981112','18659728960','200000','�����','2019-5-1','2019-10-1','������'
select * from �˻���
select * from ������
SELECT * FROM �����
drop proc createLoan

go--Ͷ���ɷ�
create proc createInsurance
@���� nvarchar(20),
@Ͷ������  nvarchar(10),
@Ͷ�������� nvarchar(10),
@Ͷ�������֤�� nvarchar(18),
@����ʱ��   date,
@Ͷ�����   money,
@Ͷ����ע   nvarchar(50)
as
begin
   if not exists(select * from ������ where �������� = @Ͷ�������� and �������֤�� = @Ͷ�������֤��)
      begin
	    print'û�иô�����Ϣ���޷�Ͷ����'
		rollback
	  end
   else
      begin
	    if not exists(select * from �˻��� where ���� = @����)
		   begin
		      print'����ע��һ���˻���'
		   end
		else
		   begin
		      if(select ��� from �˻��� where ���� = @����) > @Ͷ�����
			    begin
				  update �˻���
				  set ��� = ��� - @Ͷ�����
				  where ���� = @����
		          insert into �ɷ�Ͷ����¼��(����,Ͷ������,Ͷ��������,Ͷ�������֤��,����ʱ��,Ͷ�����,Ͷ����ע)values(@����,@Ͷ������,@Ͷ��������,@Ͷ�������֤��,@����ʱ��,@Ͷ�����,@Ͷ����ע)
                 end
			  else
			    begin
				  print'����ǰ�˻����㣡���뾡���ֵ��'
				  rollback
			    end
		   end
	  end
end

exec createInsurance '201821121020','ҽ�Ʊ���','С��','35082219981112','2019-12-31',5000,'Ͷ��ҽ�Ʊ���'
select * from �ɷ�Ͷ����¼��
drop proc createInsurance 


go--�洢���̸�Ȩ
create procedure sp_GrantProce(@username varchar(20))
as
begin
    declare @user varchar(20),@name varchar(40)
    declare t_cursor cursor for
    select user_name(uid) as users,name from sysobjects where (xtype='P' or xtype='X') and status>0
    
    open t_cursor
    
    fetch next from t_cursor into @user,@name
    
    while @@fetch_status=0
    begin
        exec('grant execute on '+@user+'.'+@name+' to '+@username)
        fetch next from t_cursor into @user,@name
    end
    
    close t_cursor
    deallocate t_cursor
end
go--Ȩ�޸���
create proc ����ԱȨ�޸���
		@id varchar(20),
		@password varchar(20)
as
begin
declare @level int
if not exists(select * from ����Ա where @id = ����)
	begin
		print'���˻�������'
		return
	end
else if  not exists(select * from ����Ա where @id = ���� and @password = ����Ա����)
	begin
		print'�������'
		return
	end
else
	begin
	exec sp_addlogin @id,@password
	exec sp_adduser @id,@id
	if((select ����Ա���� from ����Ա where @id = ����) = 1)
		begin
			exec sp_addrolemember db_owner,@id
			print'һ��Ȩ�޸�Ȩ�ɹ�'
			return 
		end
	else if((select ����Ա���� from ����Ա where @id = ����) = 2)
		begin
			exec sp_addrolemember db_datawriter,@id
			exec sp_GrantProce @id
			print'����Ȩ�޸�Ȩ�ɹ�'
			return
		end
			else if((select ����Ա���� from ����Ա where @id = ����) = 3)
		begin
			exec sp_addrolemember db_datareader,@id
			print'����Ȩ�޸�Ȩ�ɹ�'
			return
		end
	end
end


select * from ����Ա

exec ����ԱȨ�޸��� '20168851159','gly007'
exec ����ԱȨ�޸��� '20178859998','gly110'
 exec createAdmin '20178852998','gly110',3,'����','350822199110122165','13055851008','����ʡ�������ƶ�¥51��','3������Ա'
 drop proc ����ԱȨ�޸���
go