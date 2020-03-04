Return-Path: <open-iscsi+bncBDA4VMEL3QNRBSHEQDZQKGQEAVJPWEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E952B179C12
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Mar 2020 23:57:12 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id v30sf1196620lfq.0
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Mar 2020 14:57:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583362632; cv=pass;
        d=google.com; s=arc-20160816;
        b=o8/CzF1nsLOE7PsQJ/NTLqgDZn/nAFe++2CR+5QOJs98UvgQLiDUKzecsyi/cHIOvx
         dA3HYyCDrufLRQaTRRtfJL6IpCYxnNtTo5+FwKf1o/TZGifHB3sUce6YHo5vscPdhSLB
         M0vqStt+iLQdEMaBqWFn+3toNStpEc3INaiT1EyWqToQ2UFlpMiz/5QYSx3NNHfJU80F
         edZFT8VpnwGQlzEWUgaU4wdI+ep8jcUwCdrz72tAupoW0VExP94lgkJLX9vmFUdN1NXN
         bcSBWUU7uoXJKM8mQ5CNSvGhZQkUSfxHTsBKFfDn66Jz7CeYYg91ioFTAw+aZV3YiKBU
         cXpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=2ivaJpBtXL6cl8URZOJSDD9cGALbTYZnX5d0K8wTaZU=;
        b=VOd/sTcmw1VeA8o/aGxl8Qbzj6KEIsC3LwHCXl+pU1HWAKATmVbIkAgN4MKqT0IKIY
         qbbnPNm6VS1M3zKAbiiatmwXTW/fqXMN2roc32V7D7uTbSJRLUbushbVsSnJpHNzpPIn
         woLa0RtV0c8dWUMfx81S9pxxD0whKzxrH/ndUFbrk2yC5dnbTZqZBNdRx8kKhuveJw2s
         jrZYKFC495duLZwxFuhkqEeHkldqlwK2xhxcshLrrCka8YQomLkc57/7TZkPyLp52Ouz
         3JJOF3WDlY3+GsAhW4gJkev9Qb8Cxq65HJ3l7yphHR4d598juTq76DU8ZUvszrdVMuN9
         exZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ivaJpBtXL6cl8URZOJSDD9cGALbTYZnX5d0K8wTaZU=;
        b=gYScS2lg8VC6YQMB7nqzH2HuPBE8TQOryHT6dj63QUZD/W6Hohn7Wl54c8ZlY98vmh
         ZDfOWRphl3UMpdkXadrfFX7ufrCiqTdaoo2w11PnljUwYK/bZF153gqiVgi12BT38wwP
         deIErTun7RHLQm1MW8MJvVMEsSzAYR1Bth16Zf0oF8MC5KE35nvaYugIgNNyfo4eDlnZ
         jfmWDbEOSP8BCEgvUUU6aeM59Zl8NLsXfQ5EozeZc9JhctuTxqgJPSOV5mirMI+vTKSF
         4Ig41SWlU46dZeUFMB37Of8IWfBVkOeSwbAH9Qx4S/25I807khJ1bDQzWo+2ao2MbPUa
         E/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2ivaJpBtXL6cl8URZOJSDD9cGALbTYZnX5d0K8wTaZU=;
        b=SRoRrqGRiJw075BkDF3rPW+6Vdw1qQrKaVLxr3pI4IXOaPDY01Cyb/NPeDvUJHw7gT
         avOjoKEfxbF356q6xgXxpSXtE7cBX/4h+wnYigow+25T6iBDYYdpR4t1AFJrgd3Z7moQ
         rbwbBjprpOe94iVLNiqlcaFalG0IzAmDLt3hOdHFGqs7ZH8quu5NZWV9jNqhuvVJjscD
         fm8JpWC0YWn6oupxloQos7YGT8cOXAejseLLcGbiYEKHmuriom4bxqJeUE9Ce7+1DiZy
         tKoRFCEkAYMi09ROcyGSsgCMF0T7o+mqiNMoSKVJoscYmNiVQJ75tuHTScFCOHE2e0lN
         5YiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2gKM5mF9ogrFed75Dk0h4FnWHiYJ8CXIoHZe6NsFVoyXdVkVdc
	mnOgUmOC4SjYE3ylOIfIucc=
X-Google-Smtp-Source: ADFU+vs7R97pgdpBbQTJuu9yAzboaVc4LBCMYGBWugD1QmGeBM/vOH/ZArmRE/PAU30aXWpMpXw2fg==
X-Received: by 2002:a2e:8597:: with SMTP id b23mr3359161lji.181.1583362632376;
        Wed, 04 Mar 2020 14:57:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:3f0b:: with SMTP id m11ls44731lfa.0.gmail; Wed, 04 Mar
 2020 14:57:11 -0800 (PST)
X-Received: by 2002:a19:691e:: with SMTP id e30mr3308945lfc.104.1583362631582;
        Wed, 04 Mar 2020 14:57:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583362631; cv=none;
        d=google.com; s=arc-20160816;
        b=L/Mqs0Jg/qV3M+aN53a0FQx6ewozS8e/w9gKK4J0rVZxdB9Tre0HSWcSt7ImtOrXhA
         joWashmCJywVUnah9wFYIeMrnHqDShN7fp+19nQLruKoEs7YgNm4csuSUDvIhvKmCXq0
         cf30dC69x0wZe0f45+99LOMTtRPtKqPk2xtgdNwHFCCCl15GNCPPSTkRW21ZCCz1t91O
         4KNTNZV93WV/XBEqQZDMZfddQxwXK2J55SscyDe8giwGZ6kY44YA0KbXL+aengUpcE0I
         XOcieYXfehnymT/Zjw0k4Iej8WmwyTWjxusloC3y5Sq8o2h1vyE62k8NL8ZA5Fr5ezGP
         Ls/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=I2pFbFy+IOyGq5AFHcQwqoAuS+6eBKe0Htzldh65NnA=;
        b=YiHwkDqBY8BtCk/FUCy6OmrmHo0EMi8BuS2cTbC6Zvn9ccwfn3rw95WnFlCp8MVzRo
         uAC88oqD3YpUiKP7R4it+fc80cfdUOoNI+jpmPMZ9gI6pCGA2+6kNigZ+gkngsZZ2gd+
         tEgEW0Q3ETi0E9neps7AycGRYwX2a+3bO8Jx10TUSSP3Mt01ZxyA6Efkv4zVD30ZA0nF
         eFLfOMJV1oiSx17LzJuP7OZitBIZMNdBMa34vPKNGDWig4uKW3AOTmf5+Fvc1KINMrum
         vG0Pzko+4M0nLb+N+BoZkwjdTiA5D0UP+uOVcwT/bNkVhj69G988cPCHR5EgPR6JFP2/
         Uanw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id w6si265456lfq.1.2020.03.04.14.57.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 04 Mar 2020 14:57:11 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::7c7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3090229139D;
	Wed,  4 Mar 2020 22:57:10 +0000 (GMT)
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
Subject: [PATCH] iscsi: Report connection state on sysfs
Date: Wed,  4 Mar 2020 17:57:04 -0500
Message-Id: <20200304225704.1221703-1-krisman@collabora.com>
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
 drivers/scsi/libiscsi.c             |  7 ++++++-
 drivers/scsi/scsi_transport_iscsi.c | 29 ++++++++++++++++++++++++++++-
 include/scsi/scsi_transport_iscsi.h |  8 ++++++++
 3 files changed, 42 insertions(+), 2 deletions(-)

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
index 17a45716a0fe..5b0e7df92964 100644
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
@@ -3907,6 +3911,26 @@ iscsi_conn_attr(tcp_xmit_wsf, ISCSI_PARAM_TCP_XMIT_WSF);
 iscsi_conn_attr(tcp_recv_wsf, ISCSI_PARAM_TCP_RECV_WSF);
 iscsi_conn_attr(local_ipaddr, ISCSI_PARAM_LOCAL_IPADDR);
 
+static const struct {
+	int state;
+	char *name;
+} connection_state_name[] = {
+	{ISCSI_CONN_UP, "up"},
+	{ISCSI_CONN_DOWN, "down"},
+	{ISCSI_CONN_FAILED, "failed"}
+};
+
+static ssize_t
+show_conn_state(struct device *dev, struct device_attribute *attr,
+		     char *buf)
+{
+	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
+
+	return sprintf(buf, "%s\n",
+		       connection_state_name[conn->state].name);
+}
+static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
+			NULL);
 
 #define iscsi_conn_ep_attr_show(param)					\
 static ssize_t show_conn_ep_param_##param(struct device *dev,		\
@@ -3976,6 +4000,7 @@ static struct attribute *iscsi_conn_attrs[] = {
 	&dev_attr_conn_tcp_xmit_wsf.attr,
 	&dev_attr_conn_tcp_recv_wsf.attr,
 	&dev_attr_conn_local_ipaddr.attr,
+	&dev_attr_conn_state.attr,
 	NULL,
 };
 
@@ -4047,6 +4072,8 @@ static umode_t iscsi_conn_attr_is_visible(struct kobject *kobj,
 		param = ISCSI_PARAM_TCP_RECV_WSF;
 	else if (attr == &dev_attr_conn_local_ipaddr.attr)
 		param = ISCSI_PARAM_LOCAL_IPADDR;
+	else if (attr == &dev_attr_conn_state.attr)
+		return S_IRUGO;
 	else {
 		WARN_ONCE(1, "Invalid conn attr");
 		return 0;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index fa8814245796..b19138a4a774 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -188,6 +188,13 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
 				  uint32_t status, uint32_t pid,
 				  uint32_t data_size, uint8_t *data);
 
+/* iscsi class connection state */
+enum {
+	ISCSI_CONN_UP,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200304225704.1221703-1-krisman%40collabora.com.
