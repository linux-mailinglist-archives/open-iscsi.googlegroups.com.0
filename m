Return-Path: <open-iscsi+bncBDA4VMEL3QNRBZG64DXQKGQENTQ7KNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D71122178
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Dec 2019 02:29:09 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id be8sf3634440edb.16
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Dec 2019 17:29:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576546149; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1S2Jpp4ydpSPsezT08CSF3mkOlE6nLs0INVW24luzqyaV/6Tx0FukAmG66Tu77nxr
         pAwkWITI0nxxaAZ/JllgUVaCdK6JgNCfJhTqb8fwQoAvupekQpJfNU75c0yEt8ndZX+f
         +poQV+to9OaiJ3rC+u5+0E9Ra3krNBxkwBBNK1m1Rb2YL+CsuX5LCyahpU+/+sJVFKV/
         7K0xWrqwCRE63B12JrTeqKmBJ6YLH8IEXl5UpaT3tKryCOPSyG7QARzw38UVsCgoP8p4
         FJDBUFPb0xxeMBku96GlkbpQ8bZx4CBnrtJtMaFLJRi9iAflboTcwtLpSxlacSfQPGao
         CigA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=qm0wAWexhJzov+92AX5GvDldNF5dwKlIdLf6I58taz4=;
        b=ro8zTccNuJiV8HicXPWt1b1YrN8MgH3ab5DmRAm7GL0JiscpQZCRBZtV+Bt5ejmRBP
         7F0ZhVRAfzFjOIoA/xOGLBjqsvgaYzlizBRj1CrwlnmkRiCAujnxGeuZhbwaXK/6zSVu
         lrQnHt8dJqNrtdnOL3Id5bVqckE9JmlLh0ovRCl+Z30cUoqO5y39WTB0EC3cbVfaTl+S
         f2oKPwbWzC58zR3LLiwBP4EhhyRxu/PuwWNufDCmYgODyKL73r2/GPnuyLwDQ1edbqcr
         /cuww2MTbSNzuhY843haMGely27pDXf2g9/1gtQZJnLPi/z/rXsNQt6tHyEbqKxwqQ8C
         ar1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qm0wAWexhJzov+92AX5GvDldNF5dwKlIdLf6I58taz4=;
        b=PH2eqKAMlEaR8URocBvDMNoEzMEUbW2fladTXvw+l3OKQBmuyBIq+tI6ee32lcK29M
         VfC39bZXmwNtso/BamC+zB7KlUF77dukilQb5TqKOgepGo+ijGw7Mt8VMuIjhNfgFS6+
         wyZqQ3HZeqqH0UfU7U++HUuCPd4rFN6gGiAB/avQ/z5kc+zpJn/lwsv4tMwwvoTN6NxH
         fFsHamJWYGrw0jnZa1m6VCsddVQ+B5VEFyGwn0iWr6qGdK67QzfNDCBpPbdsaeoQJSru
         mkcUIkGDAAncRZREH/2DBAKTfqfz7QTQGddcgMuZBLanbLp399LC5Mwbnrd5OapL38t3
         BI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qm0wAWexhJzov+92AX5GvDldNF5dwKlIdLf6I58taz4=;
        b=SZALVNNHX2GCjgK0+9qDXD935BTc3QwN3CWpg9tVkFmWx3NZGEtun19bjoXRWr3Tn4
         X4rcnx8LCGewheBBLz+fCmzQPVTLbsVUjN7bMHRTRvKE3HSSbm34s66tUyLoEGaY7h9l
         Y+5P1tZ/v3eC1gX7G6fGJBCwGsDb3DQcY0KI9fgA8ieTqGIxWw4J1424OMxSBto9T3ib
         6YkA91dnruteBS9AHvh/EHY4XAqhDcN52oxAf3N51ttXTsWGBXV+F1O49/MUddA3VG2p
         4pzqYxa6+pFhHQtFlXQgQdnpx+gtkQk3ik6vkOAmsPwF34aWj0RMftpRIqJuhQJtwX3M
         RFUg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV9q5Qn766/BFGfeRzzkyCfSAxLQTw0nuaItHYrzsI5vUjj8NTJ
	TmiatR4ToqNlZG5zkYgAAZM=
X-Google-Smtp-Source: APXvYqyigbC2nkhMdIiTsn7qn8aKaibCrxJNni9tk4kQaX4ZqFfcSVSBwl2MQadNpQJz990lQowDbA==
X-Received: by 2002:a50:d849:: with SMTP id v9mr2636011edj.105.1576546149087;
        Mon, 16 Dec 2019 17:29:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:3614:: with SMTP id q20ls2170777ejb.2.gmail; Mon, 16
 Dec 2019 17:29:08 -0800 (PST)
X-Received: by 2002:a17:906:434c:: with SMTP id z12mr2345737ejm.168.1576546148523;
        Mon, 16 Dec 2019 17:29:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576546148; cv=none;
        d=google.com; s=arc-20160816;
        b=FZxO0Opg/ySDaRLWn6q/dt7YcC/G2qBdpStnvudKWp87kWHizf0OS6ywwCwwRKFOj8
         BpQdCt84O2tx7tDAuNran7qAsnvlw9rvU9gMcX0VqzdEy90fDInwuMdDy9f5nrRue8/9
         zxkwedx3yvjLEjmueD9kuVam6+aL6DMdsitLj6wtHAK2AjgF7ZcIrjNJz0b/67w92aRu
         jBi+1gqVCXVgUBvor2YMVI5rwoIFKEBft8bhf6sQyALCHBHZFvRzA09dyeoK28qwFRp8
         6z3LsKFIw/mxF5JXP0e6xM2Lnpv6JvaRl0XkTRzSCHePp1vQ7tqYxUFmNLL1bOj9hjkO
         hW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Y5xWnpjZRT6GA3tGS8QNtJIdjA2uoW3c0cEZlyARJJs=;
        b=O0QtNu8XrS5c9S57qodX+OZJuNpozXt2U6SelIy4laRVbKYjxHxAqDurh/iy8YJ5vr
         eGnTIKHw0s8qaVx8uhhVsJyNfrQ7LGdRrWg1ubfrXEvMddGNWg7/pVEkD/bdgWJirKz6
         PKEvYk0WZ3EwdqKTDZsaG0kR9lOH16fRyQbBSoIXQrXX2hqZloT7aZM2jeXVvCSazynR
         DeFP4xXbmKHr0Hpv/eXtXaPS8ZyW9oKxujIs4EXKMGRDHps8nt8eKyaMvs1HhDUC9W9p
         FGaB7CJiEtsKNFZ6CtE51GpLcArZSH2uawsFU7y4JhpLs+jCZADR5OhWhXLbdLDadizE
         uGYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id n21si789444eja.0.2019.12.16.17.29.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Dec 2019 17:29:08 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::647])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C6505291DF6;
	Tue, 17 Dec 2019 01:29:07 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: mchristi@redhat.com,
	martin.petersen@oracle.com,
	cleech@redhat.com
Cc: open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	kernel@collabora.com,
	Lee Duncan <LDuncan@suse.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH v2] iscsi: Perform connection failure entirely in kernel space
Date: Mon, 16 Dec 2019 20:29:04 -0500
Message-Id: <20191217012904.3834747-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.0
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

Changes since v1:
  - Remove module parameter.
  - Always do kernel-side stop work.
  - Block recovery timeout handler if system is dying.
  - send a CONN_TERM stop if the system is dying.

Cc: Mike Christie <mchristi@redhat.com>
Cc: Lee Duncan <LDuncan@suse.com>
Cc: Bart Van Assche <bvanassche@acm.org>
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
 drivers/scsi/scsi_transport_iscsi.c | 51 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 52 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735..8da35ecad697 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -84,6 +84,12 @@ struct iscsi_internal {
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
 
@@ -1609,6 +1615,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
 static LIST_HEAD(sesslist);
 static DEFINE_SPINLOCK(sesslock);
 static LIST_HEAD(connlist);
+static LIST_HEAD(connlist_err);
 static DEFINE_SPINLOCK(connlock);
 
 static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
@@ -2245,6 +2252,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 
 	mutex_init(&conn->ep_mutex);
 	INIT_LIST_HEAD(&conn->conn_list);
+	INIT_LIST_HEAD(&conn->conn_list_err);
 	conn->transport = transport;
 	conn->cid = cid;
 
@@ -2291,6 +2299,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 
 	spin_lock_irqsave(&connlock, flags);
 	list_del(&conn->conn_list);
+	list_del(&conn->conn_list_err);
 	spin_unlock_irqrestore(&connlock, flags);
 
 	transport_unregister_device(&conn->dev);
@@ -2405,6 +2414,42 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
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
+		uint32_t sid = iscsi_conn_get_sid(conn);
+		struct iscsi_cls_session *session = iscsi_session_lookup(sid);
+
+		if (!session) {
+			list_del_init(&conn->conn_list_err);
+			continue;
+		}
+
+		if (system_state != SYSTEM_RUNNING) {
+			session->recovery_tmo = 0;
+			conn->transport->stop_conn(conn, STOP_CONN_TERM);
+		} else {
+			conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
+		}
+
+		list_del_init(&conn->conn_list_err);
+	}
+	mutex_unlock(&rx_queue_mutex);
+}
+
 void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 {
 	struct nlmsghdr	*nlh;
@@ -2412,6 +2457,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
 	int len = nlmsg_total_size(sizeof(*ev));
+	unsigned long flags;
+
+	spin_lock_irqsave(&connlock, flags);
+	list_add(&conn->conn_list_err, &connlist_err);
+	spin_unlock_irqrestore(&connlock, flags);
+	queue_work(system_unbound_wq, &stop_conn_work);
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191217012904.3834747-1-krisman%40collabora.com.
