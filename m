Return-Path: <open-iscsi+bncBC755V5RXMKBBL55R6PQMGQE27TYT7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AD568F5CB
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id t20-20020adfba54000000b002be0eb97f4fsf3095263wrg.8
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjePdf3LDFAFXm+YN2K9Lq0p41foP0kZ5X6avvza8drlM/ekfUayRvu6y/7QunihtC
         UTKU8TAbdApmC4wbw38NaYcr+5jIE92ijh3c4CzwYOajZ/0XimVLtVBatqAx473adxL8
         fuN2pGHpAU5MBv4912USTZ9YQIALg5FROJy2ACOPtAOF/HYivM7V61URn8pffzvDJI+s
         4q6RQSX5sw2KacLWgnly94GYCqvxMlsIVhw3KMhk6Eqc12xJAytLfeVP7StWITX9QgRt
         Nf7mxxhIxyqcq4rEEEK7vOkEMyj2cfrlQscAEE5ry+e+Mz3ewXVuCWpEF05AvVJfuKC/
         qbyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wY56bnBNgSN5+1cdRZXc3CF/bhqe4F7L/AigkeUL970=;
        b=AeR9OKh2r1RrnOZ6TU/JU1YL+pFtf4hsJ0lyn9sWsQVR02pN5jD4wQhxPT5qRpzqRd
         rK0bExwb0lmeLuz1mCNGSLpzf9VxiaTiEF//AQY+hxkbayIEZBfWnJCBsrGqXoLApmLi
         HUyL6tR5b84XlYOA0OPLHyS/9yvTP/Mw+/DDDsTJtjWvP63u4BERsojtgvLVkKJ67NG1
         0ARjln3dcSa5gj2BO/MlTWbQQCwrsH0YhMFZ7gTqtnqp0yd4lSHXWoJ1IAYh83EkKIhm
         rPNwvjhfAnh8UlRXTSmGt9jgpHqwAXRHLz/1F74kDYRKUIXfnMUrFHtbTA2aVqVqKuKY
         8l7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wY56bnBNgSN5+1cdRZXc3CF/bhqe4F7L/AigkeUL970=;
        b=QvTqDkIUBUqbM2SgM1wKarhcRfriqjOjrtQFQpAaAy2yGmTaplPj+VBn8zInVU1nT9
         owkl12AsuV1JhrtRvDAVWHXHOQux02plvZi1AGG+aBTKTql4g429bCXkUDZ/JmN+uIcs
         b85HaN6AVwzkKSCYd4ahWIUepExBdyU0JWWyZdklI9yUUDi/iNDdkK2SM/RK1hFBDjvK
         LpuGf8mTbfg8BuvsAv8C2J9bP1lJV321A7IfooG4JFs2xejiHp5BbCqLXmXoCSoo6ORc
         vYY8VjswGAV76J0/wgfSDZMi/DmXL1WH9MQNyBcYO9FHfwppriXmKrfL3ybFXfnK+mkH
         UDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wY56bnBNgSN5+1cdRZXc3CF/bhqe4F7L/AigkeUL970=;
        b=rDeeEwD/heOuymsdmPrPivPDpWUM2FwlXH1NJotrPXK9gV8gTfsP3BylHfAOJgP0i0
         ZBjnk/LUEezXxmRN3Ocf7fRUlYxdiTLmRgYkgyEZZHslSLIFIbHh3xR4F4+WCg2emNGA
         Iup1LWjNUxU8KoEzKiiAOTv6GfXR08oCRxHLkbGc1OOTRNBzysqW/UONB9kOfB16+shN
         2u06qhKxFwCvzw0z8H9o4Z5UNeO/3c+ObkhPsFcx68LjDJKxqZOTwanIev2+CJw18dcs
         iH1EI89iQW1gEHKlG/DUi9UC9q92m7LaNc8bPUyTZYEIZe4cNtY0Af/+CJYXqh8Irx1g
         PbsQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKXxRujt0/0LPHA2z1h9YzOUEkJr/FpBN54yzmOSigEnTT/Hb0sx
	zBgVNMf/E493uK1sBz3k6Jg=
X-Google-Smtp-Source: AK7set/WT9ThaKmOUJBU7gUYL1yjfyL7J0aA96uzc+D/Z5BfSVfLL59mN+pTHWYx1pR6WPbKcsODxQ==
X-Received: by 2002:adf:e60b:0:b0:2bf:bfc1:f627 with SMTP id p11-20020adfe60b000000b002bfbfc1f627mr310069wrm.397.1675878064280;
        Wed, 08 Feb 2023 09:41:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:4f86:b0:3dc:4f57:78be with SMTP id
 n6-20020a05600c4f8600b003dc4f5778bels1447411wmq.2.-pod-control-gmail; Wed, 08
 Feb 2023 09:41:01 -0800 (PST)
X-Received: by 2002:a05:600c:1895:b0:3dc:4aa6:a8a9 with SMTP id x21-20020a05600c189500b003dc4aa6a8a9mr7375183wmp.7.1675878061821;
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878061; cv=none;
        d=google.com; s=arc-20160816;
        b=Euuuy/nf7vmrXVeBYhk/iyFdEnPlCg0K4EDAdN2J346srci0lJmIpuPXmNCeGUfxro
         fx6tIHR/5sLrnyZ5nxw/klLZt1lUoZBA/PYixzy9g4wgsJZZ9j6iaFkOqiIAoP2GVuhk
         Nq0lu7kZdi3VaW9xZKKubHOqNRWEY2TWjx/zmg+6hZxXxcYK2t55WQkJLqSdFgzblT0T
         p5Q8KPn5ldphCqYOoyYRhHvOwmB3GlvLjvoWXg1u6zB2EhZH98bg4xBJJ1i1c4GwPNzu
         E9mWJYkTXU1Ev5a5y9+we+71lWfPDfd6b90XgKBwx1g2RERKR/H1whf9wAJjch1oQMf9
         1Q8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+aFG3PKmagjBEAj+S/MqE0G9E7Nipj+tW02njP6kNPg=;
        b=FbAWSrjuCTWPv+girar+fMaR2OW+FlF8EIuTNvBIcZBVchj6k7UfkX1+uGf4TMv7TX
         AVbpcDnYbvnBPeQvUyJUNO8lrKncCgn4vPDa23OPYFGSnKvp1xXnspsvWTZfO+xdpjvl
         /BwTF13t79YKqzEc/dKICAHMyMYQVNevaJ55LeRoZb8GWsr0jbLtcn+dMH+BgqL+RnAo
         w6024t3KH+xbPSBgc1eSimWJIOu8XXYEiYo3zv8aHqd2CvuSC3bd+jGTbZGsygc1+XAu
         eZ/aPbVG0FR0NPhaFPZPsfac+ltO3ZQRID0a5b1qKa/HOc1fR1AlQoX5QhUAKFS5CLeK
         5EKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id p33-20020a05600c1da100b003dc537184cfsi395374wms.1.2023.02.08.09.41.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 94810341CA;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 2B4872C145;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 5BD80CA194; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 8/9] iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
Date: Wed,  8 Feb 2023 09:40:56 -0800
Message-Id: <8c1dfc1de1e0e6ba2669976b21f6f813699000c0.1675876735.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=QUARANTINE
 dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Lee Duncan <lduncan@suse.com>

These are cleanups after the bus to class conversion
for flashnode devices.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/qla4xxx/ql4_os.c       |  52 +++++++-------
 drivers/scsi/scsi_transport_iscsi.c | 102 ++++++++++++++--------------
 include/scsi/scsi_transport_iscsi.h |  48 ++++++-------
 3 files changed, 102 insertions(+), 100 deletions(-)

diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 18e382b6be18..8af6847773e3 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -168,20 +168,20 @@ static int qla4xxx_host_reset(struct Scsi_Host *shost, int reset_type);
  * iSCSI Flash DDB sysfs entry points
  */
 static int
-qla4xxx_sysfs_ddb_set_param(struct iscsi_bus_flash_session *fnode_sess,
-			    struct iscsi_bus_flash_conn *fnode_conn,
+qla4xxx_sysfs_ddb_set_param(struct iscsi_flash_session *fnode_sess,
+			    struct iscsi_flash_conn *fnode_conn,
 			    void *data, int len);
 static int
-qla4xxx_sysfs_ddb_get_param(struct iscsi_bus_flash_session *fnode_sess,
+qla4xxx_sysfs_ddb_get_param(struct iscsi_flash_session *fnode_sess,
 			    int param, char *buf);
 static int qla4xxx_sysfs_ddb_add(struct Scsi_Host *shost, const char *buf,
 				 int len);
 static int
-qla4xxx_sysfs_ddb_delete(struct iscsi_bus_flash_session *fnode_sess);
-static int qla4xxx_sysfs_ddb_login(struct iscsi_bus_flash_session *fnode_sess,
-				   struct iscsi_bus_flash_conn *fnode_conn);
-static int qla4xxx_sysfs_ddb_logout(struct iscsi_bus_flash_session *fnode_sess,
-				    struct iscsi_bus_flash_conn *fnode_conn);
+qla4xxx_sysfs_ddb_delete(struct iscsi_flash_session *fnode_sess);
+static int qla4xxx_sysfs_ddb_login(struct iscsi_flash_session *fnode_sess,
+				   struct iscsi_flash_conn *fnode_conn);
+static int qla4xxx_sysfs_ddb_logout(struct iscsi_flash_session *fnode_sess,
+				    struct iscsi_flash_conn *fnode_conn);
 static int qla4xxx_sysfs_ddb_logout_sid(struct iscsi_cls_session *cls_sess);
 
 static struct qla4_8xxx_legacy_intr_set legacy_intr[] =
@@ -3494,8 +3494,8 @@ static int qla4xxx_task_xmit(struct iscsi_task *task)
 	return -ENOSYS;
 }
 
-static int qla4xxx_copy_from_fwddb_param(struct iscsi_bus_flash_session *sess,
-					 struct iscsi_bus_flash_conn *conn,
+static int qla4xxx_copy_from_fwddb_param(struct iscsi_flash_session *sess,
+					 struct iscsi_flash_conn *conn,
 					 struct dev_db_entry *fw_ddb_entry)
 {
 	unsigned long options = 0;
@@ -3636,8 +3636,8 @@ static int qla4xxx_copy_from_fwddb_param(struct iscsi_bus_flash_session *sess,
 	return rc;
 }
 
-static int qla4xxx_copy_to_fwddb_param(struct iscsi_bus_flash_session *sess,
-				       struct iscsi_bus_flash_conn *conn,
+static int qla4xxx_copy_to_fwddb_param(struct iscsi_flash_session *sess,
+				       struct iscsi_flash_conn *conn,
 				       struct dev_db_entry *fw_ddb_entry)
 {
 	uint16_t options;
@@ -7183,7 +7183,7 @@ static void qla4xxx_build_new_nt_list(struct scsi_qla_host *ha,
  **/
 static int qla4xxx_sysfs_ddb_is_non_persistent(struct device *dev, void *data)
 {
-	struct iscsi_bus_flash_session *fnode_sess;
+	struct iscsi_flash_session *fnode_sess;
 
 	if (!iscsi_is_flashnode_session_dev(dev))
 		return 0;
@@ -7213,8 +7213,8 @@ static int qla4xxx_sysfs_ddb_tgt_create(struct scsi_qla_host *ha,
 					struct dev_db_entry *fw_ddb_entry,
 					uint16_t *idx, int user)
 {
-	struct iscsi_bus_flash_session *fnode_sess = NULL;
-	struct iscsi_bus_flash_conn *fnode_conn = NULL;
+	struct iscsi_flash_session *fnode_sess = NULL;
+	struct iscsi_flash_conn *fnode_conn = NULL;
 	int rc = QLA_ERROR;
 
 	fnode_sess = iscsi_create_flashnode_sess(ha->host, *idx,
@@ -7353,8 +7353,8 @@ static int qla4xxx_sysfs_ddb_add(struct Scsi_Host *shost, const char *buf,
  * This writes the contents of target ddb buffer to Flash with a valid cookie
  * value in order to make the ddb entry persistent.
  **/
-static int  qla4xxx_sysfs_ddb_apply(struct iscsi_bus_flash_session *fnode_sess,
-				    struct iscsi_bus_flash_conn *fnode_conn)
+static int  qla4xxx_sysfs_ddb_apply(struct iscsi_flash_session *fnode_sess,
+				    struct iscsi_flash_conn *fnode_conn)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
 	struct scsi_qla_host *ha = to_qla_host(shost);
@@ -7543,8 +7543,8 @@ static int qla4xxx_ddb_login_nt(struct scsi_qla_host *ha,
  *
  * This logs in to the specified target
  **/
-static int qla4xxx_sysfs_ddb_login(struct iscsi_bus_flash_session *fnode_sess,
-				   struct iscsi_bus_flash_conn *fnode_conn)
+static int qla4xxx_sysfs_ddb_login(struct iscsi_flash_session *fnode_sess,
+				   struct iscsi_flash_conn *fnode_conn)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
 	struct scsi_qla_host *ha = to_qla_host(shost);
@@ -7727,8 +7727,8 @@ static int qla4xxx_sysfs_ddb_logout_sid(struct iscsi_cls_session *cls_sess)
  *
  * This performs log out from the specified target
  **/
-static int qla4xxx_sysfs_ddb_logout(struct iscsi_bus_flash_session *fnode_sess,
-				    struct iscsi_bus_flash_conn *fnode_conn)
+static int qla4xxx_sysfs_ddb_logout(struct iscsi_flash_session *fnode_sess,
+				    struct iscsi_flash_conn *fnode_conn)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
 	struct scsi_qla_host *ha = to_qla_host(shost);
@@ -7837,12 +7837,12 @@ static int qla4xxx_sysfs_ddb_logout(struct iscsi_bus_flash_session *fnode_sess,
 }
 
 static int
-qla4xxx_sysfs_ddb_get_param(struct iscsi_bus_flash_session *fnode_sess,
+qla4xxx_sysfs_ddb_get_param(struct iscsi_flash_session *fnode_sess,
 			    int param, char *buf)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
 	struct scsi_qla_host *ha = to_qla_host(shost);
-	struct iscsi_bus_flash_conn *fnode_conn;
+	struct iscsi_flash_conn *fnode_conn;
 	struct ql4_chap_table chap_tbl;
 	struct device *dev;
 	int parent_type;
@@ -8091,8 +8091,8 @@ qla4xxx_sysfs_ddb_get_param(struct iscsi_bus_flash_session *fnode_sess,
  * This sets the parameter of flash ddb entry and writes them to flash
  **/
 static int
-qla4xxx_sysfs_ddb_set_param(struct iscsi_bus_flash_session *fnode_sess,
-			    struct iscsi_bus_flash_conn *fnode_conn,
+qla4xxx_sysfs_ddb_set_param(struct iscsi_flash_session *fnode_sess,
+			    struct iscsi_flash_conn *fnode_conn,
 			    void *data, int len)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
@@ -8319,7 +8319,7 @@ qla4xxx_sysfs_ddb_set_param(struct iscsi_bus_flash_session *fnode_sess,
  *
  * This invalidates the flash ddb entry at the given index
  **/
-static int qla4xxx_sysfs_ddb_delete(struct iscsi_bus_flash_session *fnode_sess)
+static int qla4xxx_sysfs_ddb_delete(struct iscsi_flash_session *fnode_sess)
 {
 	struct Scsi_Host *shost = iscsi_flash_session_to_shost(fnode_sess);
 	struct scsi_qla_host *ha = to_qla_host(shost);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c065763b1fc6..13393c025ccb 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -854,7 +854,7 @@ static ssize_t								\
 show_##type##_##name(struct device *dev, struct device_attribute *attr,	\
 		     char *buf)						\
 {									\
-	struct iscsi_bus_flash_session *fnode_sess =			\
+	struct iscsi_flash_session *fnode_sess =			\
 					iscsi_dev_to_flash_session(dev);\
 	struct iscsi_transport *t = fnode_sess->transport;		\
 	return t->get_flashnode_param(fnode_sess, param, buf);		\
@@ -954,7 +954,7 @@ static umode_t iscsi_flashnode_sess_attr_is_visible(struct kobject *kobj,
 						    int i)
 {
 	struct device *dev = container_of(kobj, struct device, kobj);
-	struct iscsi_bus_flash_session *fnode_sess =
+	struct iscsi_flash_session *fnode_sess =
 						iscsi_dev_to_flash_session(dev);
 	struct iscsi_transport *t = fnode_sess->transport;
 	int param;
@@ -1045,7 +1045,7 @@ static const struct attribute_group *iscsi_flashnode_sess_attr_groups[] = {
 
 static void iscsi_flashnode_sess_release(struct device *dev)
 {
-	struct iscsi_bus_flash_session *fnode_sess =
+	struct iscsi_flash_session *fnode_sess =
 						iscsi_dev_to_flash_session(dev);
 
 	kfree(fnode_sess->targetname);
@@ -1055,7 +1055,7 @@ static void iscsi_flashnode_sess_release(struct device *dev)
 }
 
 static const struct device_type iscsi_flashnode_sess_dev_type = {
-	.name = "iscsi_flashnode_sess_dev_type",
+	.name = "iscsi_flashnode_sess",
 	.groups = iscsi_flashnode_sess_attr_groups,
 	.release = iscsi_flashnode_sess_release,
 };
@@ -1072,8 +1072,8 @@ static ssize_t								\
 show_##type##_##name(struct device *dev, struct device_attribute *attr,	\
 		     char *buf)						\
 {									\
-	struct iscsi_bus_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);\
-	struct iscsi_bus_flash_session *fnode_sess =			\
+	struct iscsi_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);\
+	struct iscsi_flash_session *fnode_sess =			\
 				iscsi_flash_conn_to_flash_session(fnode_conn);\
 	struct iscsi_transport *t = fnode_conn->transport;		\
 	return t->get_flashnode_param(fnode_sess, param, buf);		\
@@ -1162,7 +1162,7 @@ static umode_t iscsi_flashnode_conn_attr_is_visible(struct kobject *kobj,
 						    int i)
 {
 	struct device *dev = container_of(kobj, struct device, kobj);
-	struct iscsi_bus_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);
+	struct iscsi_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);
 	struct iscsi_transport *t = fnode_conn->transport;
 	int param;
 
@@ -1238,7 +1238,7 @@ static const struct attribute_group *iscsi_flashnode_conn_attr_groups[] = {
 
 static void iscsi_flashnode_conn_release(struct device *dev)
 {
-	struct iscsi_bus_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);
+	struct iscsi_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);
 
 	kfree(fnode_conn->ipaddress);
 	kfree(fnode_conn->redirect_ipaddr);
@@ -1247,12 +1247,28 @@ static void iscsi_flashnode_conn_release(struct device *dev)
 }
 
 static const struct device_type iscsi_flashnode_conn_dev_type = {
-	.name = "iscsi_flashnode_conn_dev_type",
+	.name = "iscsi_flashnode_conn",
 	.groups = iscsi_flashnode_conn_attr_groups,
 	.release = iscsi_flashnode_conn_release,
 };
 
-static struct class iscsi_flashnode_bus = {
+/**
+ * iscsi_is_flashnode_conn_dev - verify passed device is to be flashnode conn
+ * @dev: device to verify
+ * @data: pointer to data containing value to use for verification
+ *
+ * Verifies if the passed device is flashnode conn device
+ *
+ * Returns:
+ *  1 on success
+ *  0 on failure
+ */
+static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
+{
+	return dev->type == &iscsi_flashnode_conn_dev_type;
+}
+
+static struct class iscsi_flashnode = {
 	.name = "iscsi_flashnode",
 };
 
@@ -1269,12 +1285,12 @@ static struct class iscsi_flashnode_bus = {
  *  pointer to allocated flashnode sess on success
  *  %NULL on failure
  */
-struct iscsi_bus_flash_session *
+struct iscsi_flash_session *
 iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 			    struct iscsi_transport *transport,
 			    int dd_size)
 {
-	struct iscsi_bus_flash_session *fnode_sess;
+	struct iscsi_flash_session *fnode_sess;
 	int err;
 
 	fnode_sess = kzalloc(sizeof(*fnode_sess) + dd_size, GFP_KERNEL);
@@ -1284,7 +1300,7 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 	fnode_sess->transport = transport;
 	fnode_sess->target_id = index;
 	fnode_sess->dev.type = &iscsi_flashnode_sess_dev_type;
-	fnode_sess->dev.class = &iscsi_flashnode_bus;
+	fnode_sess->dev.class = &iscsi_flashnode;
 	fnode_sess->dev.parent = &shost->shost_gendev;
 	dev_set_name(&fnode_sess->dev, "flashnode_sess-%u:%u",
 		     shost->host_no, index);
@@ -1317,13 +1333,13 @@ EXPORT_SYMBOL_GPL(iscsi_create_flashnode_sess);
  *  pointer to allocated flashnode conn on success
  *  %NULL on failure
  */
-struct iscsi_bus_flash_conn *
+struct iscsi_flash_conn *
 iscsi_create_flashnode_conn(struct Scsi_Host *shost,
-			    struct iscsi_bus_flash_session *fnode_sess,
+			    struct iscsi_flash_session *fnode_sess,
 			    struct iscsi_transport *transport,
 			    int dd_size)
 {
-	struct iscsi_bus_flash_conn *fnode_conn;
+	struct iscsi_flash_conn *fnode_conn;
 	int err;
 
 	fnode_conn = kzalloc(sizeof(*fnode_conn) + dd_size, GFP_KERNEL);
@@ -1332,7 +1348,7 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
 	fnode_conn->transport = transport;
 	fnode_conn->dev.type = &iscsi_flashnode_conn_dev_type;
-	fnode_conn->dev.class = &iscsi_flashnode_bus;
+	fnode_conn->dev.class = &iscsi_flashnode;
 	fnode_conn->dev.parent = &fnode_sess->dev;
 	dev_set_name(&fnode_conn->dev, "flashnode_conn-%u:%u:0",
 		     shost->host_no, fnode_sess->target_id);
@@ -1352,23 +1368,7 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_create_flashnode_conn);
 
-/**
- * iscsi_is_flashnode_conn_dev - verify passed device is to be flashnode conn
- * @dev: device to verify
- * @data: pointer to data containing value to use for verification
- *
- * Verifies if the passed device is flashnode conn device
- *
- * Returns:
- *  1 on success
- *  0 on failure
- */
-static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
-{
-	return dev->type == &iscsi_flashnode_conn_dev_type;
-}
-
-static int iscsi_destroy_flashnode_conn(struct iscsi_bus_flash_conn *fnode_conn)
+static int iscsi_destroy_flashnode_conn(struct iscsi_flash_conn *fnode_conn)
 {
 	device_unregister(&fnode_conn->dev);
 	return 0;
@@ -1376,10 +1376,10 @@ static int iscsi_destroy_flashnode_conn(struct iscsi_bus_flash_conn *fnode_conn)
 
 static int flashnode_match_index(struct device *dev, void *data)
 {
-	struct iscsi_bus_flash_session *fnode_sess = NULL;
+	struct iscsi_flash_session *fnode_sess = NULL;
 	int ret = 0;
 
-	if (dev->type != &iscsi_flashnode_sess_dev_type)
+	if (!iscsi_is_flashnode_session_dev(dev))
 		goto exit_match_index;
 
 	fnode_sess = iscsi_dev_to_flash_session(dev);
@@ -1400,10 +1400,10 @@ static int flashnode_match_index(struct device *dev, void *data)
  *  pointer to found flashnode session object on success
  *  %NULL on failure
  */
-static struct iscsi_bus_flash_session *
+static struct iscsi_flash_session *
 iscsi_get_flashnode_by_index(struct Scsi_Host *shost, uint32_t idx)
 {
-	struct iscsi_bus_flash_session *fnode_sess = NULL;
+	struct iscsi_flash_session *fnode_sess = NULL;
 	struct device *dev;
 
 	dev = device_find_child(&shost->shost_gendev, &idx,
@@ -1447,7 +1447,7 @@ EXPORT_SYMBOL_GPL(iscsi_find_flashnode_sess);
  *  %NULL on failure
  */
 struct device *
-iscsi_find_flashnode_conn(struct iscsi_bus_flash_session *fnode_sess)
+iscsi_find_flashnode_conn(struct iscsi_flash_session *fnode_sess)
 {
 	return device_find_child(&fnode_sess->dev, NULL,
 				 iscsi_is_flashnode_conn_dev);
@@ -1469,7 +1469,7 @@ static int iscsi_iter_destroy_flashnode_conn_fn(struct device *dev, void *data)
  * Deletes the flashnode session entry and all children flashnode connection
  * entries from sysfs
  */
-void iscsi_destroy_flashnode_sess(struct iscsi_bus_flash_session *fnode_sess)
+void iscsi_destroy_flashnode_sess(struct iscsi_flash_session *fnode_sess)
 {
 	int err;
 
@@ -1485,7 +1485,7 @@ EXPORT_SYMBOL_GPL(iscsi_destroy_flashnode_sess);
 
 static int iscsi_iter_destroy_flashnode_fn(struct device *dev, void *data)
 {
-	if (dev->type != &iscsi_flashnode_sess_dev_type)
+	if (!iscsi_is_flashnode_session_dev(dev))
 		return 0;
 
 	iscsi_destroy_flashnode_sess(iscsi_dev_to_flash_session(dev));
@@ -3610,8 +3610,8 @@ static int iscsi_set_flashnode_param(struct net *net,
 {
 	char *data = (char *)ev + sizeof(*ev);
 	struct Scsi_Host *shost;
-	struct iscsi_bus_flash_session *fnode_sess;
-	struct iscsi_bus_flash_conn *fnode_conn;
+	struct iscsi_flash_session *fnode_sess;
+	struct iscsi_flash_conn *fnode_conn;
 	struct device *dev;
 	uint32_t idx;
 	int err = 0;
@@ -3699,7 +3699,7 @@ static int iscsi_del_flashnode(struct net *net,
 			       struct iscsi_uevent *ev)
 {
 	struct Scsi_Host *shost;
-	struct iscsi_bus_flash_session *fnode_sess;
+	struct iscsi_flash_session *fnode_sess;
 	uint32_t idx;
 	int err = 0;
 
@@ -3740,8 +3740,8 @@ static int iscsi_login_flashnode(struct net *net,
 				 struct iscsi_uevent *ev)
 {
 	struct Scsi_Host *shost;
-	struct iscsi_bus_flash_session *fnode_sess;
-	struct iscsi_bus_flash_conn *fnode_conn;
+	struct iscsi_flash_session *fnode_sess;
+	struct iscsi_flash_conn *fnode_conn;
 	struct device *dev;
 	uint32_t idx;
 	int err = 0;
@@ -3793,8 +3793,8 @@ static int iscsi_logout_flashnode(struct net *net,
 				  struct iscsi_uevent *ev)
 {
 	struct Scsi_Host *shost;
-	struct iscsi_bus_flash_session *fnode_sess;
-	struct iscsi_bus_flash_conn *fnode_conn;
+	struct iscsi_flash_session *fnode_sess;
+	struct iscsi_flash_conn *fnode_conn;
 	struct device *dev;
 	uint32_t idx;
 	int err = 0;
@@ -5194,7 +5194,7 @@ static __init int iscsi_transport_init(void)
 	if (err)
 		goto unregister_conn_class;
 
-	err = class_register(&iscsi_flashnode_bus);
+	err = class_register(&iscsi_flashnode);
 	if (err)
 		goto unregister_session_class;
 
@@ -5217,7 +5217,7 @@ static __init int iscsi_transport_init(void)
 unregister_pernet_subsys:
 	unregister_pernet_subsys(&iscsi_net_ops);
 unregister_flashnode_bus:
-	class_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode);
 unregister_session_class:
 	transport_class_unregister(&iscsi_session_class);
 unregister_conn_class:
@@ -5237,7 +5237,7 @@ static void __exit iscsi_transport_exit(void)
 {
 	destroy_workqueue(iscsi_conn_cleanup_workq);
 	unregister_pernet_subsys(&iscsi_net_ops);
-	class_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode);
 	transport_class_unregister(&iscsi_connection_class);
 	transport_class_unregister(&iscsi_session_class);
 	transport_class_unregister(&iscsi_host_class);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 580f06d1479b..d03d9eb5707b 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -26,8 +26,8 @@ struct iscsi_task;
 struct sockaddr;
 struct iscsi_iface;
 struct bsg_job;
-struct iscsi_bus_flash_session;
-struct iscsi_bus_flash_conn;
+struct iscsi_flash_session;
+struct iscsi_flash_conn;
 
 /**
  * struct iscsi_transport - iSCSI Transport template
@@ -141,18 +141,18 @@ struct iscsi_transport {
 			 uint32_t *num_entries, char *buf);
 	int (*delete_chap) (struct Scsi_Host *shost, uint16_t chap_tbl_idx);
 	int (*set_chap) (struct Scsi_Host *shost, void *data, int len);
-	int (*get_flashnode_param) (struct iscsi_bus_flash_session *fnode_sess,
-				    int param, char *buf);
-	int (*set_flashnode_param) (struct iscsi_bus_flash_session *fnode_sess,
-				    struct iscsi_bus_flash_conn *fnode_conn,
-				    void *data, int len);
-	int (*new_flashnode) (struct Scsi_Host *shost, const char *buf,
-			      int len);
-	int (*del_flashnode) (struct iscsi_bus_flash_session *fnode_sess);
-	int (*login_flashnode) (struct iscsi_bus_flash_session *fnode_sess,
-				struct iscsi_bus_flash_conn *fnode_conn);
-	int (*logout_flashnode) (struct iscsi_bus_flash_session *fnode_sess,
-				 struct iscsi_bus_flash_conn *fnode_conn);
+	int (*get_flashnode_param)(struct iscsi_flash_session *fnode_sess,
+				   int param, char *buf);
+	int (*set_flashnode_param)(struct iscsi_flash_session *fnode_sess,
+				   struct iscsi_flash_conn *fnode_conn,
+				   void *data, int len);
+	int (*new_flashnode)(struct Scsi_Host *shost, const char *buf,
+			     int len);
+	int (*del_flashnode)(struct iscsi_flash_session *fnode_sess);
+	int (*login_flashnode)(struct iscsi_flash_session *fnode_sess,
+			       struct iscsi_flash_conn *fnode_conn);
+	int (*logout_flashnode)(struct iscsi_flash_session *fnode_sess,
+				struct iscsi_flash_conn *fnode_conn);
 	int (*logout_flashnode_sid) (struct iscsi_cls_session *cls_sess);
 	int (*get_host_stats) (struct Scsi_Host *shost, char *buf, int len);
 	u8 (*check_protection)(struct iscsi_task *task, sector_t *sector);
@@ -332,7 +332,7 @@ struct iscsi_iface {
 	dev_to_shost(_iface->dev.parent)
 
 
-struct iscsi_bus_flash_conn {
+struct iscsi_flash_conn {
 	struct list_head conn_list;	/* item in connlist */
 	void *dd_data;			/* LLD private data */
 	struct iscsi_transport *transport;
@@ -370,14 +370,14 @@ struct iscsi_bus_flash_conn {
 };
 
 #define iscsi_dev_to_flash_conn(_dev) \
-	container_of(_dev, struct iscsi_bus_flash_conn, dev)
+	container_of(_dev, struct iscsi_flash_conn, dev)
 
 #define iscsi_flash_conn_to_flash_session(_conn) \
 	iscsi_dev_to_flash_session(_conn->dev.parent)
 
 #define ISID_SIZE 6
 
-struct iscsi_bus_flash_session {
+struct iscsi_flash_session {
 	struct list_head sess_list;		/* item in session_list */
 	struct iscsi_transport *transport;
 	unsigned int target_id;
@@ -432,7 +432,7 @@ struct iscsi_bus_flash_session {
 };
 
 #define iscsi_dev_to_flash_session(_dev) \
-	container_of(_dev, struct iscsi_bus_flash_session, dev)
+	container_of(_dev, struct iscsi_flash_session, dev)
 
 #define iscsi_flash_session_to_shost(_session) \
 	dev_to_shost(_session->dev.parent)
@@ -491,17 +491,17 @@ extern struct device *
 iscsi_find_flashnode(struct Scsi_Host *shost, void *data,
 		     int (*fn)(struct device *dev, void *data));
 
-extern struct iscsi_bus_flash_session *
+extern struct iscsi_flash_session *
 iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 			    struct iscsi_transport *transport, int dd_size);
 
-extern struct iscsi_bus_flash_conn *
+extern struct iscsi_flash_conn *
 iscsi_create_flashnode_conn(struct Scsi_Host *shost,
-			    struct iscsi_bus_flash_session *fnode_sess,
+			    struct iscsi_flash_session *fnode_sess,
 			    struct iscsi_transport *transport, int dd_size);
 
 extern void
-iscsi_destroy_flashnode_sess(struct iscsi_bus_flash_session *fnode_sess);
+iscsi_destroy_flashnode_sess(struct iscsi_flash_session *fnode_sess);
 
 extern void iscsi_destroy_all_flashnode(struct Scsi_Host *shost);
 extern int iscsi_flashnode_bus_match(struct device *dev,
@@ -510,7 +510,9 @@ extern struct device *
 iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
 			  int (*fn)(struct device *dev, void *data));
 extern struct device *
-iscsi_find_flashnode_conn(struct iscsi_bus_flash_session *fnode_sess);
+iscsi_find_flashnode_conn(struct iscsi_flash_session *fnode_sess);
+
+extern bool iscsi_is_flashnode_session_dev(struct device *dev);
 
 extern bool iscsi_is_flashnode_session_dev(struct device *dev);
 
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8c1dfc1de1e0e6ba2669976b21f6f813699000c0.1675876735.git.lduncan%40suse.com.
