Return-Path: <open-iscsi+bncBDA4VMEL3QNRBRNYQTZQKGQERE7P2VI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F68E17A8F0
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Mar 2020 16:35:33 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id r30sf4658798edi.9
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Mar 2020 07:35:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583422533; cv=pass;
        d=google.com; s=arc-20160816;
        b=ojQaQdk7S8Rhn8Wsf3pyQDI88rfpSwlMDOXZZdtZd+y0Zm58sx+Khnpb1pz6ftygzy
         sCecUFOuav0UyPwbpAqp/ke//cXLu6AEyv8fhTsnlXQdmZNGIFMDM7cpW8XWNamFIcS6
         F6WmcU5dimoRg2EOb9XX0RJd2AkqjgwFA10/rLfLO7vj6Qbs56qF5XnefGNWHwGoiX6j
         BKHDW5Mu+Ay1CciocF00fKRXeaxv3PeHSsXPjBd3S10dJvwcLNjica7GujpUWhMdvVFz
         BS8K9JQTeJLtDg+9pn4FhLtQLTb2H+BySGK05KtMNJDU1A574kmGOTm5BVh7mu1vIYIO
         8nWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=/8vTwQ9LwTZSmB1ZWACqLAr89mfPeCfKPu1qifLfUSE=;
        b=WPPiUlIVEGoikljKDhlgyrHMvfi8vz+TqPc3WtaSIYWuJDBN8g0XxRt9a6sNIK5N65
         eHqwOQuTSCvjIHG+QdgP6DnrHi8DedfvlD/Rus5gN3MGenedydZiha6t6ZTyf4SrHXYX
         47Z2ucCYby/Wm3Q6FNQBkGOYKuYkqo4Y6vhJC6LA3RRgikiC8cTKbLx4nZHLegWD2wbj
         9dzTBpPXRgsgiKAW1SYMeU1MeznzsugoQ9XnbrGPq5roCR1nPEmrGBVTYj3ZyUfI6ZjH
         RKZi8FVPVTosG6q0cN/sI7ikW3hiQJ7wJkkpxnh13eMaXW6jE8mMiqHeLfJQ098eKR8l
         V+Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/8vTwQ9LwTZSmB1ZWACqLAr89mfPeCfKPu1qifLfUSE=;
        b=TUOJ3P2Y7infEhxVs0plrdxQlSnM0bvLVWFzK/ZKnD2jt2ggoHvcf+++7LC2OE3EMB
         4NAz5xF9XFmkWnUdoIbbOgYMScGAZEvLT8uWfnpRmx9wlHXn3olBL1P7q0Q2lNce+MQo
         WwsViir/pjA8+1eWlXRQkpLvEBb9SbIOZFocQVU1Fp13JXPEtE/GSCvx0lufozUYz7cy
         rwMtBrpK/N2Gzfja4FLo+VKHWThiB3Hz4Zvqz4mapEzmJd33cR+CyOyYqcyNUMuwxswQ
         A9KTXkzOBjDicxRo/5VRVKaMTQq1L+Awz4/mjLy1I+15AJvVbEvZJA+h+7zL+SvurPYj
         /skg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/8vTwQ9LwTZSmB1ZWACqLAr89mfPeCfKPu1qifLfUSE=;
        b=mYjL2tVBoDTM25XoEAps2wKnrrVU3DSiXFhOsgQeOb7PeJfEyA9GHyHesIY9insCRG
         DPQXX/ACFGDrKmyUsQjERfvdA7xhkqlu4DjtmVvGpL+YP5I+OVqu6msgXbHI964StHLZ
         29rR0RBjVuIgjJm23UJzX9MPNEQKAoq1uIAYeKEHsDZRUsGBpzcdwjsJOHwPJRvbYL8S
         QgVGXsyza+kYO6RynVfSfWfvGdF9/rISvZ1JAfIuPLV8tBU8HLIiTqdGbNulRLIluiSV
         SnifDz3rkMM2OpSLRPcWuPndu0e0Jin3aGuEtwRB4sBoyetVFvh/UkawS5SY87PP2SQc
         A5ZQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ04BQ3lvSRPHeeF67w3w6FBK7yKCd3l8brPDIMImzU6AJUSyTeG
	6b/qXHpQdBs1YlTk0bNN19o=
X-Google-Smtp-Source: ADFU+vtZS5vYPizcOEr+GVF5JN3cdGEqS8OD9fpyxjzoEMc6qlxN+W4ca7xUrN67hxHFD7EEkLyxvA==
X-Received: by 2002:a17:906:4a12:: with SMTP id w18mr8254753eju.321.1583422533248;
        Thu, 05 Mar 2020 07:35:33 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:f14a:: with SMTP id z10ls363247edl.1.gmail; Thu, 05 Mar
 2020 07:35:32 -0800 (PST)
X-Received: by 2002:a05:6402:176a:: with SMTP id da10mr8942682edb.195.1583422532681;
        Thu, 05 Mar 2020 07:35:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583422532; cv=none;
        d=google.com; s=arc-20160816;
        b=gx11TlHKUHPpjiug4eey3wQlWlBBth88n37eMfRcKpUO2ubs4TfjS8OxbGvLWCQNfe
         ngGSdElUQ7npvpQ5jCwFtLbBEMhxN6zU7DyyPerLBYPJd9zZvTPZhMlhtAXTF1MevvhE
         RtgDOe+YKWBKMgJ9dUzD/BM2vUH1qKlXaL1XAvZyLUwaHDJPhNWyYxG6zXv8SjjoApRv
         FGVRIBCIFK6Lj9WQVv9uzG8ldVPPlGffwhzCdHimx1KPH6OKUlMRfzBtYYxxtz0kCvz4
         IFjLAVEXjpcWfi9ofAfPG0Lhwcn59t40mC4LjPkZ7D8e43MlmjHq7ubmRXcJUmcoqaZP
         cmZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=h2jAtmBEcAIraDP6TVVGo3eQSbnP6vQm56XOryUreI8=;
        b=Q/5HQDpPqnUpWMchmAm+2FErw+9sxFbVmjD+fUN/zUBdF2MLyZhqFdUAyM7EmVHqJR
         mIzqLvKBPSzUMoXKHYku9ZzTIRPGiulk9Hp34WWwwAbNDXFNUq9fVCOO/U8iRryZaFgg
         6VW3WQimUlJZUa9hBCLGD3odLlx5LeUWIzg08FaoWm7ivfDCbY7Ln7o6Gg0ELCdyxGhk
         a9m8VroTwYFa0BvsyPBcSRts3bcaAfKyGQu/MZH2bKQu3VUXQF20H3ZgsSFTwo1zI/K1
         rT6g7FEug+YXkJ4gEpVj6eNTagR2mTAlPPCgsBxRDechGfCxaRY+tuYxHEUX6uqmzmVm
         lYzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id h10si371752edn.1.2020.03.05.07.35.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Mar 2020 07:35:32 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 2CE24296C4A
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>,
	Junho Ryu <jayr@google.com>
Subject: [PATCH v2] iscsi: Report connection state on sysfs
Date: Thu,  5 Mar 2020 10:35:21 -0500
Message-Id: <20200305153521.1374259-1-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

If an iSCSI connection happens to fail while the daemon isn't
running (due to a crash or for another reason), the kernel failure
report is not received.  When the daemon restarts, there is insufficient
kernel state in sysfs for it to know that this happened.  open-iscsi
tries to reopen every connection, but on different initiators, we'd like
to know which connections have failed.

There is session->state, but that has a different lifetime than an iSCSI
connection, so it doesn't directly relflect the connection state.

Cc: Khazhismel Kumykov <khazhy@google.com>
Suggested-by: Junho Ryu <jayr@google.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/libiscsi.c             |  7 +++++-
 drivers/scsi/scsi_transport_iscsi.c | 38 ++++++++++++++++++++++++++++-
 include/scsi/scsi_transport_iscsi.h |  8 ++++++
 3 files changed, 51 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 70b99c0e2e67..ca488c57ead4 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3153,13 +3153,18 @@ void iscsi_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
 
 	switch (flag) {
 	case STOP_CONN_RECOVER:
+		cls_conn->state = ISCSI_CONN_FAILED;
+		break;
 	case STOP_CONN_TERM:
-		iscsi_start_session_recovery(session, conn, flag);
+		cls_conn->state = ISCSI_CONN_DOWN;
 		break;
 	default:
 		iscsi_conn_printk(KERN_ERR, conn,
 				  "invalid stop flag %d\n", flag);
+		return;
 	}
+
+	iscsi_start_session_recovery(session, conn, flag);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_stop);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 17a45716a0fe..9b6bd03b0963 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2276,6 +2276,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 	INIT_LIST_HEAD(&conn->conn_list_err);
 	conn->transport = transport;
 	conn->cid = cid;
+	conn->state = ISCSI_CONN_DOWN;
 
 	/* this is released in the dev's release function */
 	if (!get_device(&session->dev))
@@ -3709,8 +3710,11 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		break;
 	case ISCSI_UEVENT_START_CONN:
 		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
-		if (conn)
+		if (conn) {
 			ev->r.retcode = transport->start_conn(conn);
+			if (!ev->r.retcode)
+				conn->state = ISCSI_CONN_UP;
+		}
 		else
 			err = -EINVAL;
 		break;
@@ -3907,6 +3911,35 @@ iscsi_conn_attr(tcp_xmit_wsf, ISCSI_PARAM_TCP_XMIT_WSF);
 iscsi_conn_attr(tcp_recv_wsf, ISCSI_PARAM_TCP_RECV_WSF);
 iscsi_conn_attr(local_ipaddr, ISCSI_PARAM_LOCAL_IPADDR);
 
+static const struct {
+	int value;
+	char *name;
+} connection_state_names[] = {
+	{ISCSI_CONN_UP, "up"},
+	{ISCSI_CONN_DOWN, "down"},
+	{ISCSI_CONN_FAILED, "failed"}
+};
+
+static const char *connection_state_name(int state)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(connection_state_names); i++) {
+		if (connection_state_names[i].value == state)
+			return connection_state_names[i].name;
+	}
+	return NULL;
+}
+
+static ssize_t show_conn_state(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
+
+	return sprintf(buf, "%s\n", connection_state_name(conn->state));
+}
+static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
+			NULL);
 
 #define iscsi_conn_ep_attr_show(param)					\
 static ssize_t show_conn_ep_param_##param(struct device *dev,		\
@@ -3976,6 +4009,7 @@ static struct attribute *iscsi_conn_attrs[] = {
 	&dev_attr_conn_tcp_xmit_wsf.attr,
 	&dev_attr_conn_tcp_recv_wsf.attr,
 	&dev_attr_conn_local_ipaddr.attr,
+	&dev_attr_conn_state.attr,
 	NULL,
 };
 
@@ -4047,6 +4081,8 @@ static umode_t iscsi_conn_attr_is_visible(struct kobject *kobj,
 		param = ISCSI_PARAM_TCP_RECV_WSF;
 	else if (attr == &dev_attr_conn_local_ipaddr.attr)
 		param = ISCSI_PARAM_LOCAL_IPADDR;
+	else if (attr == &dev_attr_conn_state.attr)
+		return S_IRUGO;
 	else {
 		WARN_ONCE(1, "Invalid conn attr");
 		return 0;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index fa8814245796..d710cf48b038 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -188,6 +188,13 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
 				  uint32_t status, uint32_t pid,
 				  uint32_t data_size, uint8_t *data);
 
+/* iscsi class connection state */
+enum {
+	ISCSI_CONN_UP = 0,
+	ISCSI_CONN_DOWN,
+	ISCSI_CONN_FAILED,
+};
+
 struct iscsi_cls_conn {
 	struct list_head conn_list;	/* item in connlist */
 	struct list_head conn_list_err;	/* item in connlist_err */
@@ -198,6 +205,7 @@ struct iscsi_cls_conn {
 	struct iscsi_endpoint *ep;
 
 	struct device dev;		/* sysfs transport/container device */
+	int state;
 };
 
 #define iscsi_dev_to_conn(_dev) \
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200305153521.1374259-1-krisman%40collabora.com.
