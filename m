Return-Path: <open-iscsi+bncBDA4VMEL3QNRBBV5YXZQKGQECRQLRVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B5363189231
	for <lists+open-iscsi@lfdr.de>; Wed, 18 Mar 2020 00:34:30 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id i24sf334078wml.1
        for <lists+open-iscsi@lfdr.de>; Tue, 17 Mar 2020 16:34:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584488070; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/dFCHxGc/Rr2WKIJaW5lZXem5m0xJ9ik0GloEXcCuEWyuY020YIlOFEAMBnFoMQi7
         7FAbzKHSDzTvkjLK9oElOaB2JjN3mm9rsNfD6yo1+onquM6O7oQVTcP2mrc3w4Qd5Izg
         tWQN+ZT+Nw5+cLZb4qscu0rB4nFJSh39+/SGBLqqFuyPwRkTKIWYAGGf2KQEq6uXtmDA
         9GjujVSDpECYnWygoXyj/pyGJoy4OTtxOfmuJmlseiTGPsjLG9YijCeg3P/cyFT0Sd6k
         +Z1O4STY2uSwSgidly4CgB0WoPD2UlniDNWfwER5L7vGA/rPJLh0k4NB0HZClhFI+5rt
         6DQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=xM0ci9MjAXeFd0Kargvonk9OUOxP+gJSnpEtoP+ffLA=;
        b=c5q/ZpwqbPzU2Q58PxHfXHXPxVUMEU6mQHd9QfZpkfeTr39HtzRD6pTB6TFq5O7Yk9
         5mqNBfomshEPwMgfE/WSxZ0Cmdqne0ofYk54ZtZMNrFBn6a/Kd2JtuxHa4d9TsgtZoR8
         EL4AtVJMwkl4BhjQLRey/MZ5Z2cM+mjpD/ny5/Z2D5Rc7fUFNQ05dfidSYUpJrEvNjAj
         rFVEwpz9u1EILrr2qo8uIgdFVu2jVNiMpHbBA3jKyHVpu2ypkXbPffMvhLXEE1WCwWri
         QLNVGUjfun8XB3dp1JsnuQ4qJeK33bSGA0n4PdnWMvh/QAx8QlJdJNqmwpioALeSfo8F
         D1Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xM0ci9MjAXeFd0Kargvonk9OUOxP+gJSnpEtoP+ffLA=;
        b=fCbzk0fIIE8vdPTR8OhTZY4VjNIs53ADT59yM3nGI0RDUHpE0gLImVIiBSytZOJibm
         W86PfI2ETqkLnwGqhx60dKu3eUqMsGB5lz5K7uWQA2ItfOUbCXOGhKmccn5mYt6cyilz
         LrdfhfZ8UEzweyGkH06rXmrFScRolppBfTiBNidwhc8A/q/ltzOkA573DUa34J9PKBMN
         Bf2VGknC9yQd5Mz/XmncR57t9REeWWXMAaUZG4X4Q8/2W+fbr4N3Ijb156PTMAkpYCSU
         4WsOgI/Y1y5fiRBPId4U9DM6Lo6bF12E65J5oGoWVvSC0N93o0pkSpZrkSD8GI2qqPrB
         cAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xM0ci9MjAXeFd0Kargvonk9OUOxP+gJSnpEtoP+ffLA=;
        b=f0NbcG72pqcLggQCali9b+JCKIKaB6glxLAIYptlozbQkzD8+eDKVqry4cM3OjMiOO
         rLXYCq6MLOjNsbSP4R/OzBX/c/QkQLDkQelhvVkiLQly1GDYzB/0ILqO+xLhStt4bOlK
         imD8dT5ok35EHWGXKNDtb2kR37MB9Nyz1Zw37XDrmX1UKo1PmFiPl4HavOSddN8Lv4Zl
         mB1whDkKeUHHFnhTc9/H5Z3j1bCA6WfrT6m7a51UDv6FMVikjEvGB2LYKRzg7CKolA/c
         zOzh7nREHz5ky6zJx2ODrrRb1EQxolGU9xQHpVzSCuA7xdDEJ8RCGdMAZA9y21BhfVDy
         ilnA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ309wQtsreF/GEpaVrYTVsosU6tifcw0kh1ecUIcTEVcfc9bZ5u
	HagAFlbIFti7hgOxAoX+kWs=
X-Google-Smtp-Source: ADFU+vubBYuPOhOit1ZER2VdL4iwd7r8B5jMTMxaSVy8iA1E8Sf+LtpZsOZ4T66DJebE/liGORZ7mg==
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr1388795wmf.165.1584488070397;
        Tue, 17 Mar 2020 16:34:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:aa99:: with SMTP id h25ls5456763wrc.1.gmail; Tue, 17 Mar
 2020 16:34:29 -0700 (PDT)
X-Received: by 2002:adf:c44c:: with SMTP id a12mr1552948wrg.172.1584488069928;
        Tue, 17 Mar 2020 16:34:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584488069; cv=none;
        d=google.com; s=arc-20160816;
        b=TvrquhQ6lUmp+GJeaMmpwoxUzNNAxLljiUA30vZWIAvJQaWm1tu23Als6tLjCu4ZzX
         FbVNkPKDgAtV/TZR/6GALHzYkeEYmzQs3wQU4zz82v1UoHFub5bUF+ko0thMJqbPJ9ll
         JSXnTEF7KJG2fB4HiYuEfEmJWdy6K2VHvbn4WjGxQzyJ3h6SSG2kxiUs/NHWJE4GoVSi
         /nr+b+Jq1oxToWn2K59dYCDHLOU7sVOdr1LKI3NuebP/dawLxFjIiFsElMqpYc1Uce4w
         wkGqPVNeDyPMchmB2R2y4uHpvkNUzOTIfUwH1gsuKbhrjhjdozp/f9MUVZFCbXNiPSiN
         SgaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=gMXROujQlkJ/5TXO8cgLq9z3miTTU7aBJO8popm4sFA=;
        b=HPOjb+vu8OjGDRZKcAAgwqlMZQk/DKqjEz1PXUWqnvrborK5pYgWaXRUZ5CaTNKD/N
         RqsX2OVDyOCWnCljYqwNUMvIw+tgi2NVj/Tqad8VNIafEri/4uAIgDZbpRPJm2VJw/Aq
         xLPIBn06JwU6DpugxCwTafYs0zL16N4gSU2OlNmANDOkpnkaDAxubBQCNDfyU6Qfqnaj
         gYDAYGNgYFnxVWqV1QbUbSOdasmjAjz+9Lw8Uv45MvBoU1MXCqo0I7KNGklUkdsoAIGx
         dbomV68pnBfavCwoRYXceipy7LKfc9s1K6sZVxDCPI1aPW39O8goIILkTrTnhPn/yaUg
         6L7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id i19si64471wml.0.2020.03.17.16.34.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 16:34:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 5B045294F41
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: bvanassche@acm.org,
	open-iscsi@googlegroups.com,
	cleech@redhat.com,
	martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>,
	Junho Ryu <jayr@google.com>
Subject: [PATCH RESEND v4] iscsi: Report connection state on sysfs
Date: Tue, 17 Mar 2020 19:34:22 -0400
Message-Id: <20200317233422.532961-1-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
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
Changes since v3:
  - Change state type to enum (Bart)

Changes since v2:
  - Use designated initializers (Bart)

Changes since v1:
  - Remove dependency of state values (Bart)

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
index 17a45716a0fe..0ec1b31c75a9 100644
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
 
+static const char *const connection_state_names[] = {
+	[ISCSI_CONN_UP] = "up",
+	[ISCSI_CONN_DOWN] = "down",
+	[ISCSI_CONN_FAILED] = "failed"
+};
+
+static ssize_t show_conn_state(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
+	const char *state = "unknown";
+
+	if (conn->state >= 0 &&
+	    conn->state < ARRAY_SIZE(connection_state_names))
+		state = connection_state_names[conn->state];
+
+	return sprintf(buf, "%s\n", state);
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
index fa8814245796..bdcb6d69d154 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -188,6 +188,13 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
 				  uint32_t status, uint32_t pid,
 				  uint32_t data_size, uint8_t *data);
 
+/* iscsi class connection state */
+enum iscsi_connection_state {
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
+	enum iscsi_connection_state state;
 };
 
 #define iscsi_dev_to_conn(_dev) \
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200317233422.532961-1-krisman%40collabora.com.
