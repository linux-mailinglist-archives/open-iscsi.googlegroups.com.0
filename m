Return-Path: <open-iscsi+bncBDA4VMEL3QNRBDNBXLXQKGQEJE7UAVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF51173FF
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Dec 2019 19:21:02 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id c17sf7818287wrp.10
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 10:21:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575915662; cv=pass;
        d=google.com; s=arc-20160816;
        b=KmBYwIv61bpoloxUURJNyCVZ2I3DAhljolIWXQdR4qZd8zrAICVEJHcxsrM5CS3FFf
         37/e7x1vyVsRLv1/b/XO8fa07xN4Pq2tMnrRNI3UTROIUuLtRBMKS4XxURIJK+tSA37A
         YgRdfGr872fYP1QdJMmMVYqbvCQNN6sSvX+izqGtIrtMB/ABPVjO1A/N6ulBnZUBYgJ6
         c6+xAvVqn/sdLJcPhcFZBethnxCnZGobp7ZyqQBZGPmvHcBpIzd3ccAYFLZxdH1wlSlj
         QRKWr7DLxfWcbjBcHSza+QfeZR5kieVbk65B7HewJ6Mm7NL1tFKRXfBgjXy5FYCUk8YL
         uVPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=C8RBclo1qXSJQcdz9SImxoJTn+VeSIvgGQ+AzFYlzlg=;
        b=uLPI/hlm43QHCypWIuXy91kkU17iQ4mC7qaoca0ItShnFHxikYg01KVzyOa/jILHGY
         fpJ0aDHTc2RpgxJIqktkJUTDNTbyhmmJVY+eMnvz2OrT65hGdMRas3LVreilKmQmSf/m
         LMtElLt74+/KrOQAy6z0zhsYYfLlmUvSI28KFNFhoGkKjpmTVf7ByXE4YStyqiD/Xkya
         7uuEX5BHl45ZZjTIWSsXMtz/jMzyOf76mTzjnjW4jk1W4BzzG0ioRfwyeImz+W7g3Wix
         8DnTGpMUGo8AtxopSyMFquVWtig80DpAHj8FKAZhTJ6LyYO/X0XvD8r6PoGP3YvwlOKQ
         kTPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C8RBclo1qXSJQcdz9SImxoJTn+VeSIvgGQ+AzFYlzlg=;
        b=dyeH17sRlSGa3p6qZKd8nyXlMvEtZfd4mXdGVrIW5tTa2ROMITcaKN0TkpcXngb6b3
         5Qha1d7UuvIXVSA7+7PTWc15ViI8scIlHXqNE6MDgsaSZzt73YymGlsn5FksbmeMrB78
         RnNKbt3HhavcQSoIWxIUP8HdI7IOQoJ3mqYZ3GE3i/PGLqHkMRwjY+3+D9orZhy9j5l5
         iOMBcN8wA5/kLI0yFcFw/pn2lEVisMv0YyFbXje3iJT2TfOphG8hp7Z7DyBbvXLdboS0
         K6hy2+yz0XC9iSMlIf3dQFXXYp765lNZyfnX6Fzs024hY3aR8Q4EEDqtvdynNOgJaSk3
         pgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C8RBclo1qXSJQcdz9SImxoJTn+VeSIvgGQ+AzFYlzlg=;
        b=VbsicSVl7Vygw/zugYp5uhKSgXEqiFRt/VxhGlSg+mP8PhD1DMkihufKk8Uv55mu52
         D3ufWbTaCbeavk+gfPMOOJxoKmEBjRnu8LK4lKD2I31gThr/aZ6r0/tKbkDv0aNflPA5
         ZbKHJurHo3RM8H3LBXDLM9FShQer+48LI5mtqZVxh7GzHp38eoiw8KL/5fK6yjLIyxiI
         3G5Q8Lfxecq9STzFAMAGqTtzN6OvNPrH7PcAPLEErs1MyYWmSket8hVrgsXMcaouqVwu
         HeUhxFOV5KApzW1M5bjSD29tK9qHCCpoAOWIsDkoRu8Yi2h08V8lyPsARBD1BGTSKMzl
         Jb6w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUTaLZTM0O/8UvOWCcQfhqYWhGSFsfAtGKtswnF8Bwuv4r0Xgnp
	bb+WPgkN1SCKI74AGc8IVQI=
X-Google-Smtp-Source: APXvYqz45ovBcIGGwQtADlk+CvkTLwtsQ++z27bDFzYIInj48whDfvDbOUAAqZXdHN9lj2VtfO5zqQ==
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr3438847wrj.325.1575915661794;
        Mon, 09 Dec 2019 10:21:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls6151385wrn.6.gmail; Mon, 09 Dec
 2019 10:21:01 -0800 (PST)
X-Received: by 2002:a5d:608e:: with SMTP id w14mr3749992wrt.256.1575915661263;
        Mon, 09 Dec 2019 10:21:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575915661; cv=none;
        d=google.com; s=arc-20160816;
        b=eWjTEjkdXL23A9Wzmdf05+G2Tqc+hz+Qgza/74HgkAHzlN6i/DrMaRSJzZ/CGQBpea
         wQm2NW2wEw+lAGEbgV7woO9LSD9+iCnqv3AR5gqTglmo3q+0vmPg5aeMjhxMMZ7bj4Ij
         hIPRu6UjvwY4Q4hczf0rKmswmaeDbhe9N+pa4VUX/BHQ5WdgQwAAfIcT9ME5wCUk0T2U
         v+vvQGw3DiSUlboLqXl63SQDopX9852Geo+10d7nmG5Kr/YVF+HNPadtSuIJO75F/ri2
         xX8YgDlDLulbHaNiHZAmJ2wlFHILimyhKH/hnOdqDWopX8cx78sdpMVv+2Rh7b6TEmBw
         qBRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=U9GtmGxg4wkGYCh1zCilLIvVqikhBrHpSiv5tjFBQNA=;
        b=JHbarNRVsLAFXQRpGeVrcchOzXu3fsZ0ijw6cvpDQXamQDvjIpcHEo0NOr7dyy4/q4
         yk/Kir+0HnDsvpeMW376jnAVVGSJOWDos5wzuDuE7ee2thtJnM5ixlTW5ylTHaL566Xq
         Uyr5IALmP2euqaMKu0jhBTQaArUhoywA7wSAhiV9vA0kuDgB0bAInG0zSesKqTzJ0OvI
         5GNg+XBwKg78XQheBiuVDDfASldbn2Wu0JbEmICp2nxw3X0rpRZmDavxUmspvJi98qWe
         Bj+TTiooF/x+BcWop0JAdJGZpogHfUtcT+uLvu8Edl5WmdPRoqnnSDnNWF9ud+9sSWMU
         vfwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id w127si7936wma.0.2019.12.09.10.21.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Dec 2019 10:21:01 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BA7BE290C34;
	Mon,  9 Dec 2019 18:21:00 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com,
	cleech@redhat.com,
	martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	Bharath Ravi <rbharath@google.com>,
	kernel@collabora.com,
	Dave Clausen <dclausen@google.com>,
	Nick Black <nlb@google.com>,
	Vaibhav Nagarnaik <vnagarnaik@google.com>,
	Anatol Pomazau <anatol@google.com>,
	Tahsin Erdogan <tahsin@google.com>,
	Frank Mayhar <fmayhar@google.com>,
	Junho Ryu <jayr@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH] iscsi: Perform connection failure entirely in kernel space
Date: Mon,  9 Dec 2019 13:20:54 -0500
Message-Id: <20191209182054.1287374-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.0
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

From: Bharath Ravi <rbharath@google.com>

Connection failure processing depends on a daemon being present to (at
least) stop the connection and start recovery.  This is a problem on a
multipath scenario, where if the daemon failed for whatever reason, the
SCSI path is never marked as down, multipath won't perform the
failover and IO to the device will be forever waiting for that
connection to come back.

This patch implements an optional feature in the iscsi module, to
perform the connection failure inside the kernel.  This way, the
failover can happen and pending IO can continue even if the daemon is
dead. Once the daemon comes alive again, it can perform recovery
procedures if applicable.

Co-developed-by: Dave Clausen <dclausen@google.com>
Signed-off-by: Dave Clausen <dclausen@google.com>
Co-developed-by: Nick Black <nlb@google.com>
Signed-off-by: Nick Black <nlb@google.com>
Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
Co-developed-by: Anatol Pomazau <anatol@google.com>
Signed-off-by: Anatol Pomazau <anatol@google.com>
Co-developed-by: Tahsin Erdogan <tahsin@google.com>
Signed-off-by: Tahsin Erdogan <tahsin@google.com>
Co-developed-by: Frank Mayhar <fmayhar@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Junho Ryu <jayr@google.com>
Signed-off-by: Junho Ryu <jayr@google.com>
Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Bharath Ravi <rbharath@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 46 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 47 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735..7251b2b5b272 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -36,6 +36,12 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_session);
 EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_tcp);
 EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_sw_tcp);
 
+static bool kern_conn_failure;
+module_param(kern_conn_failure, bool, S_IRUGO|S_IWUSR);
+MODULE_PARM_DESC(kern_conn_failure,
+		 "Allow the kernel to detect and disable broken connections "
+		 "without requiring userspace intervention");
+
 static int dbg_session;
 module_param_named(debug_session, dbg_session, int,
 		   S_IRUGO | S_IWUSR);
@@ -84,6 +90,12 @@ struct iscsi_internal {
 	struct transport_container session_cont;
 };
 
+/* Worker to perform connection failure on unresponsive connections
+ * completely in kernel space.
+ */
+static void stop_conn_work_fn(struct work_struct *work);
+static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
+
 static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
 static struct workqueue_struct *iscsi_eh_timer_workq;
 
@@ -1609,6 +1621,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
 static LIST_HEAD(sesslist);
 static DEFINE_SPINLOCK(sesslock);
 static LIST_HEAD(connlist);
+static LIST_HEAD(connlist_err);
 static DEFINE_SPINLOCK(connlock);
 
 static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
@@ -2245,6 +2258,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 
 	mutex_init(&conn->ep_mutex);
 	INIT_LIST_HEAD(&conn->conn_list);
+	INIT_LIST_HEAD(&conn->conn_list_err);
 	conn->transport = transport;
 	conn->cid = cid;
 
@@ -2291,6 +2305,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 
 	spin_lock_irqsave(&connlock, flags);
 	list_del(&conn->conn_list);
+	list_del(&conn->conn_list_err);
 	spin_unlock_irqrestore(&connlock, flags);
 
 	transport_unregister_device(&conn->dev);
@@ -2405,6 +2420,28 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
 
+static void stop_conn_work_fn(struct work_struct *work)
+{
+	struct iscsi_cls_conn *conn, *tmp;
+	unsigned long flags;
+	LIST_HEAD(recovery_list);
+
+	spin_lock_irqsave(&connlock, flags);
+	if (list_empty(&connlist_err)) {
+		spin_unlock_irqrestore(&connlock, flags);
+		return;
+	}
+	list_splice_init(&connlist_err, &recovery_list);
+	spin_unlock_irqrestore(&connlock, flags);
+
+	mutex_lock(&rx_queue_mutex);
+	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
+		conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
+		list_del_init(&conn->conn_list_err);
+	}
+	mutex_unlock(&rx_queue_mutex);
+}
+
 void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 {
 	struct nlmsghdr	*nlh;
@@ -2412,6 +2449,15 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
 	int len = nlmsg_total_size(sizeof(*ev));
+	unsigned long flags;
+
+	if (kern_conn_failure) {
+		spin_lock_irqsave(&connlock, flags);
+		list_add(&conn->conn_list_err, &connlist_err);
+		spin_unlock_irqrestore(&connlock, flags);
+
+		queue_work(system_unbound_wq, &stop_conn_work);
+	}
 
 	priv = iscsi_if_transport_lookup(conn->transport);
 	if (!priv)
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 325ae731d9ad..2129dc9e2dec 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
 
 struct iscsi_cls_conn {
 	struct list_head conn_list;	/* item in connlist */
+	struct list_head conn_list_err;	/* item in connlist_err */
 	void *dd_data;			/* LLD private data */
 	struct iscsi_transport *transport;
 	uint32_t cid;			/* connection id */
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191209182054.1287374-1-krisman%40collabora.com.
