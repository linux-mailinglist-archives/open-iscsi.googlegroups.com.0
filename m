Return-Path: <open-iscsi+bncBDA4VMEL3QNRBOP7THZQKGQEKGAM5VA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BB017E5E5
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Mar 2020 18:41:15 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a1sf3124648lfr.16
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Mar 2020 10:41:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583775674; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQ8HsJENlcNLII85RHKK7QaouvPCY7Cc6HugpwUjummW2q0ob2U48cjnNEbc2JhDjp
         VBoeJA01x8xnhuNBlye2Fk4fTQz2pAjzZ5vFXaZ8ilQfG619OxO80+M1Zl0s70Vj5fKh
         Y07hWGAUMYVaN9AHh95uqN/mkVQYKmkAjfx6Xw87rgjwSVyALBO2SQ/dc/29TLBFXmJ9
         7Of+uuW3MJ8tMxcM/iN5scx0zpL8H2a1YI6ikPXSlhDCStGXMsid6nrdySGy+UuN47q3
         1pFC0C4BqMOyRyNIhZ5Y0LWu3vhywU+/iUI8BzXs8cDS1U4fTwDR5We6Qb6GGBpvf4D3
         mqbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=rAjix4fXvWNr9mJXfmmW8D2zEKyhcPqj4NEHEpjv1SY=;
        b=IWYMBnLS2LKbSS8wd01EHYbxgbbynv+8wGdC1141gVyxV6ZyqksJUYCc/HbD+2YX1I
         mbbRaCIs8KNjgZ9kTZtl+bhwglA0EhZ8QIIs0IHTAxVjoLFwBx9kml5XeafvgJd+U6Y6
         4vbu8mt1N+zTMMuspUSbUnFoLkZvdacHonTwWBcdGGS4IKLISzEnYbhKx1QUXpIYoWTO
         cm8+s728xBVAA2R2RiQIxQTOdoWVbhofxtfoCF9NUPTe2sy+0SVQYaeVXxhIwMnsRnBC
         B6RnWEkygQW0NaW03/yEe1rSKXMk5bC0vF94bhqCVcP2KgWPfUaytbuVFUJf4zLAKj4T
         A48A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rAjix4fXvWNr9mJXfmmW8D2zEKyhcPqj4NEHEpjv1SY=;
        b=GdSUOEzgXSu0rLVGAqJ1rUdFOlgGGxle+EbGu7mP7w80tW7V8u8quL4c/3XVLvM2pz
         3CcRBxrE5t8tPK5IHgmwIsu5HWKVYzMNvr9jOcTSfDSoeYDdjqwxAfbhfF/0AoGF8Nql
         H6sqgHR50pyhVnpgnyFuz5c+WWp/M2TRCkRjepMXlS6RUDHg3labvarW3X7jOcpvd5fu
         2Yc+tqknzVoGJ1hfUBoD76yTndnngJ2ovmwuPf9wb33JlkqRWzc6QZzf+9T2vIsY4Vx9
         lnreP4LmvALK8/N3pQwJr234+4/7s1nVhxg0KGMLVYPjz2ZWpxOTEzw+3E4jIby3Nt9b
         XhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rAjix4fXvWNr9mJXfmmW8D2zEKyhcPqj4NEHEpjv1SY=;
        b=pnvC/hLtTOdIdrznhaKYPvd2nya7AgXQCkPQC3IY6YFFlHHse00cIq3HS8babe4gTz
         GPby8kqJuulJYuD1Kh5rIDP+3EgLRpCujZb//5lwWHVc+JbxBOWdVi3hQDlk/NxYWKF3
         8CjO9kJCR7ri9ZQcNDN32pcDD3aoRWXLi2dD/cJqVgxV5ymBlpt9Y2PMdOQ7G1g9F1gX
         LP1SrBFaPYwE7aAwsCQBFzWY/oHvlavgrHF0Dwr9O0Ri82bbMt4rLxelSd2tD31UXT5V
         nbl1PSDWPNPtnKQeLOlSoBs6/mpOcn6Q2wQXP1AH7z7+L/3lhJliK6jyLDQFcAsFb5AE
         Ho8Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3J1M240JnXbsaBZwIrX0vURtkj/z9+615vjZcCBjfs0kHs0/mP
	+s/gauYx+utsBysrDX4ccbw=
X-Google-Smtp-Source: ADFU+vutEICsU+q1XkMV7m9mI6Mxq6EkQkvCpytFi92osSdoUhlIZhjSla059PeP8/Yu+jOWAXKJXQ==
X-Received: by 2002:a05:6512:15e:: with SMTP id m30mr6058667lfo.120.1583775673864;
        Mon, 09 Mar 2020 10:41:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls1427276lfe.3.gmail; Mon, 09
 Mar 2020 10:41:13 -0700 (PDT)
X-Received: by 2002:ac2:4316:: with SMTP id l22mr10255759lfh.150.1583775672927;
        Mon, 09 Mar 2020 10:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583775672; cv=none;
        d=google.com; s=arc-20160816;
        b=M7ifgZ1GEIYBRqDCd3Nm3xIGt1od1kIMykVZSRQNGjSExHJOuLxgaYt7zEkvwCs3+n
         n5WC7smtHsHQPX2hkIqKI6dNd8jsz2j2juC4aUsDnbMvgtU2NgdyYQxn6v/56LMuX28O
         mCbFDrbeWozC4CjJ4VrPnd/gl8Jsg1hVtof/CxG/AS7r6CNWYy/vAl10Q8qyxOjqoUGf
         MB6xkoujKl4yQ+qP20guLmRDo50u9/JjY0/97P4jG/06bqO0J0eQWm/b5+Eq0cuVyWDg
         g560XexzLVBiOapoc+S4zlga3Ai9hmjeSFmnBWHMjw6p1weq43nUI6Q+i1JY0tfid8h6
         d0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=be+hwAopMysb4J9PH1L0oCqcZOaATaxP8ST/40Oaiw8=;
        b=f5inQVeXH7IFzPrV0UTLwP2WEJBzfYGK5OLQXMdTvcLQnSHLGwtI4S+73wag0W6bTH
         rAlEQIbNzStvhuNDmeUHnhevMd53EUC1lnaRqhCCj/mnT6VJbF08EGDwCS4Hmtb6zl9K
         EyfJM/k5SLxGTcEGB8yA8oGANWjDhDcE+axZweL1V2emRvqW1iKyYIQdSJaXuPHaxdcq
         fu0fYpcqOqt/KgjxuHmBdWaLq8D++mmz/PoYZ4Wldc4ONTd/NEyMGAMoijKQIiUq2ZsB
         5tiWas65Fu4h6InIkZBzqtCfT512/AmzXx3TwGVGq3SnotIbUBhPbw/RYCNYg3l7v0Lj
         IIQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id s6si591696ljm.3.2020.03.09.10.41.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 10:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id A9F2D29497E
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: open-iscsi@googlegroups.com,
	cleech@redhat.com,
	martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org,
	bvanassche@acm.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>,
	Junho Ryu <jayr@google.com>
Subject: [PATCH v4] iscsi: Report connection state on sysfs
Date: Mon,  9 Mar 2020 13:41:05 -0400
Message-Id: <20200309174105.3371944-1-krisman@collabora.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200309174105.3371944-1-krisman%40collabora.com.
