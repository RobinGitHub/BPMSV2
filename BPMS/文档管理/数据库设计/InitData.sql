--���ݳ�ʼ��
-------------------------------------------------����ϵͳ-------------------------------------------------
DECLARE @currId int
exec @currId=GetNewID 'SystemInfo' 
INSERT INTO SystemInfo(ID,NAME,CODE,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
VALUES(@currId,'Ȩ��ϵͳ','BPMS','',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')
-------------------------------------------------���빫˾-------------------------------------------------
exec @currId=GetNewID 'Organization'
INSERT INTO Organization(ID,ParentId,Code,ShortName,Name,Category,IsInnerOrganize,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
VALUES(@currId,0,'TK','TK','���',0,1,'',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')
-------------------------------------------------�����ɫ-------------------------------------------------
exec @currId=GetNewID 'RoleInfo'
INSERT INTO RoleInfo(ID,SystemId,OrganizationId,ParentId,Code,Name,Category,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
VALUES(@currId,1,1,0,'admin','Ĭ�Ϲ���Ա',0,'',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')
-------------------------------------------------�����û�-------------------------------------------------
exec @currId=GetNewID 'UserInfo'
INSERT INTO UserInfo(ID,Code,Account,Password,Name,Spell,RoleId,Gender,Birthday,DutyId,TitleId,CompanyId,DepartmentId,WorkgroupId,REMARK,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
VALUES(@currId,'admin','0001','0001','admin','admin',1,'��',GETDATE(),0,0,1,0,0,'',1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')
-------------------------------------------------����˵�-------------------------------------------------
--exec @currId=GetNewID 'MenuInfo'
--INSERT INTO MenuInfo(ID,SystemId,ParentId,Code,Name,Category,PurviewId,NavigateUrl,FormName,isSplit,IsUnfold,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
--VALUES(@currId,1,0,'PurviewApply','Ȩ��Ӧ��',0,0,'#','#',0,0,'',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')

--exec @currId=GetNewID 'MenuInfo'
--INSERT INTO MenuInfo(ID,SystemId,ParentId,Code,Name,Category,PurviewId,NavigateUrl,FormName,isSplit,IsUnfold,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
--VALUES(@currId,1,0,'SystemApply','ϵͳӦ��',0,0,'#','#',0,0,'',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')

--exec @currId=GetNewID 'MenuInfo'
--INSERT INTO MenuInfo(ID,SystemId,ParentId,Code,Name,Category,PurviewId,NavigateUrl,FormName,isSplit,IsUnfold,REMARK,ALLOWEDIT,ALLOWDELETE,ISENABLED,SORTINDEX,DELETEMARK,CREATEDATE,CREATEUSERID,CREATEUSERNAME,MODIFYDATE,MODIFYUSERID,MODIFYUSERNAME)
--VALUES(@currId,1,1,'','','',0,'#','#',0,0,'',0,0,1,1,1,GETDATE(),1,'admin',GETDATE(),1,'admin')

