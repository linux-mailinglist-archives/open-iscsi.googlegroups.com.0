Return-Path: <open-iscsi+bncBDA4VMEL3QNRB553V7YQKGQE3JGVXOY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACEC1493C8
	for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 07:19:36 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id 18sf400571wmp.0
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 22:19:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579933176; cv=pass;
        d=google.com; s=arc-20160816;
        b=XAav3v70XWleI7adfo5R9Sh5C5ho5mAn4ubqFIY8F0LxaPNnCHedDpude3fNyahzVJ
         9MerQMHpLe4mbKC+KbUSS1GGOqhq2rBeXg8ncu+ZTKx0IrdYo9FyuI8MEruGkhvSZzDt
         gi6eg3YV3kjk16jeMy9lRiHeDVlzhU83cGdDZrpETOk2hAzxGOlr1CtiCb6h+5n9gERW
         EDqi1QjoCX9UOEahfyZ+lDaoQjX763CclQXP5aRJzG4MSeF3wrfFDH7NG0wwfo7K5gC5
         MNA10p/SdViwLK8a0QmF735xpaE+4fp3V4uMSXJ3CerOtWEQ3XSr4dhKqtC4/e0R660H
         xq2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=ZbWbHX8yoW+RivU3tKF1GCD6raJVQFi+8MxX7VxrzjI=;
        b=I/GCW02j6ER22DFS9wSrn4uy3Q+DxnrbvYouf4r8hbc/OYrpl3KRB0ZT76qKeTOeGo
         TMInwXjf2zQUhE5/+67bvQvej/qkRRrehJnLJ90csal2Tod7N+qZ5sVbV9cPcX96cFyW
         nncU3JJVmla7zZcs9RF/UJSb6SO1EKdkAGXdzzLPJTWQ8NKstO34SYTub9rC46ue8D0B
         Uylw4j4Wden58sQYyRCTFw8kXnOj5Dk56L0yAvve7ytvaNJaUBX6XkPQi0tPDFFq8R1t
         6bejzTVb1O1Mdc2yz3Jqzn9ERTWtgKn0JkcQwT6GPAKei0cZtY9rMu0JVDpEKwON4bXd
         uuRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZbWbHX8yoW+RivU3tKF1GCD6raJVQFi+8MxX7VxrzjI=;
        b=RyqgjzzczfNbObN0MUzvqBI19VoZkpmwzPIAkflA7+Xsdxqd+duo/ROdah5D1yg17d
         PbZ4XkWR8cA+k/uw7O9M72Btdrslh2MJqEevBcUxHOyHjqh7m4HZacnA08uJ8s1u96Mh
         27dWHbwpQBmjZMyCRRIVNsIl89DVZrOgPlihD7r+x0oOPDsiPuMIyZEFjRDezwE8UgTh
         DEorTT6idpjyoeIIpmLexMzuDVe/OJvM16LrrWSApybADUHiHafOIMdXKIgy/2U9mswv
         VMsme3BsXZdj/m2cXvQs14CpHvL0kBYXSUAd/1AoDlJVDWR+oDT1rLtKUtFK0p53vvcY
         rPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZbWbHX8yoW+RivU3tKF1GCD6raJVQFi+8MxX7VxrzjI=;
        b=F7/YwJkpwOJFdM7dGpj5Xz0xRaKVBuVq8HV1hW26KjYcywlkzvmYITKzTzzyv5dcRf
         hq1BZr196kPFhORgGX7sEZ5hhUfBs/cgTynzIApy+vDoabnpoN2PEKXujKoJXHUtlfCl
         dMJvTpbSp40zNoivhiBb5ZXRz7LB1mIqeyaKaBVpn5iNMilSrv0kb68u2y8MDv2R6bLz
         Pb8Yjwj8tNAPAhC9IMfKXM833PZb4DF2SjMknZQDO+7wtr8+rJ+LNpYbRrKJu4htn696
         j85iBgsSG4Cxm+wUjLOd3Hzvs9pxyDEz9lTjkj+fPiiR7yrZJ4O9pD2xNq3y0BoionOQ
         IGoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVwP9BNJBdDB+axAeDRp5TY35q/vHXcsTi/N3GeKIfQVlgbyNNi
	5afx4nprnVggJYGRaZwtIHg=
X-Google-Smtp-Source: APXvYqzuVCXFfJNpe/n+OhAPECnvefRHNRXUm+jy+vQM+xuHLS/v9daVdAznaIsQJ2GD1VBPSF2a5g==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr2891627wmj.100.1579933176141;
        Fri, 24 Jan 2020 22:19:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:9d13:: with SMTP id g19ls534357wme.1.gmail; Fri, 24 Jan
 2020 22:19:35 -0800 (PST)
X-Received: by 2002:a05:600c:2c2:: with SMTP id 2mr2923369wmn.155.1579933175425;
        Fri, 24 Jan 2020 22:19:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579933175; cv=none;
        d=google.com; s=arc-20160816;
        b=uRWWNvUQYUptTn+QE1r8GPSTvaRLavSLn6fIKN9ynbN3YHvYkGyGScF36KIAAUQqAW
         0HNtAbmdzsvPucRCTE3gSiE+Mmenz+ZyRHbesyWhSYqud51hKCkaHRggiEIhCrzfOiIc
         ASw7gFgzKhrK3dlgFL2Qggh+6+Byb2JRaWUV6+9ZPpTEyEdJKS3hUTEkTh6+cJOqJ10H
         XT0V0dOo1zk3+FM6pm8bCCG4lYVv48+68zWpcWQnuJQY1H36pHtqYBwAX0JElrpK1jE1
         9Inrdd7r/Hm1Zz0pp/MRBxvqNRZly9ZGNeQS1dfj1/g0+0vduJEU+/c0UQgAQTB/wKVW
         fGkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=J5IxaulHRZsZohJre717/XOfKy/kbQQ3TtTeE4Mjdno=;
        b=VZJlp1NquD8D2sMm2nKEgatZxuMVw1AEidsUJRrP4b1rGJJb4q1FB+dtVDQEvLf+1c
         PJ3ovh/J//qZQHKfZ+zMA3n3EUJWr4saFlblzBvB7d+o4yNbpfKRUKqFX/i7XdH58Q5F
         S4itcuDZR0ttEjpU/SCdEctl5XU9GrHJwK+kZKIA3e0hzTGFdOmrIgojQWcuUNvvLg3N
         A7crzTIEThxOR0jM5h1UuCF/k/LT2cNFOgFNjD8esuA+0JHD9izjvnfgj9j19r0fZnTW
         CAyqSDXo+kGqkMKF6pvtwzRjKFnWyItIUhINJksqzd8UsOiT5c7bhzOOzBaWbY3eCgpf
         ibhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id p23si71308wma.1.2020.01.24.22.19.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 Jan 2020 22:19:35 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id A453629193A
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	Bharath Ravi <rbharath@google.com>,
	kernel@collabora.com,
	Mike Christie <mchristi@redhat.com>,
	Lee Duncan <LDuncan@suse.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Dave Clausen <dclausen@google.com>,
	Nick Black <nlb@google.com>,
	Vaibhav Nagarnaik <vnagarnaik@google.com>,
	Anatol Pomazau <anatol@google.com>,
	Tahsin Erdogan <tahsin@google.com>,
	Frank Mayhar <fmayhar@google.com>,
	Junho Ryu <jayr@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH RESEND v4] iscsi: Perform connection failure entirely in kernel space
Date: Sat, 25 Jan 2020 01:19:25 -0500
Message-Id: <20200125061925.191601-1-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0.rc2
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

Hi Lee,

Martin asked for you to re-review this patch before he applies it, since
there was a small change from v3 after you acked it.  The change is that
we started to protect the list_empty() verification with the spin lock
on session destruction.

For that reason, I dropped your reviewed-by.  Can you please take
another look so we can have this merged?

Thanks,

-- >8 -- 

Connection failure processing depends on a daemon being present to (at
least) stop the connection and start recovery.  This is a problem on a
multipath scenario, where if the daemon failed for whatever reason, the
SCSI path is never marked as down, multipath won't perform the
failover and IO to the device will be forever waiting for that
connection to come back.

This patch performs the connection failure entirely inside the kernel.
This way, the failover can happen and pending IO can continue even if
the daemon is dead. Once the daemon comes alive again, it can execute
recovery procedures if applicable.

Changes since v3:
  - Protect list_empty with connlock on session destroy

Changes since v2:
  - Don't hold rx_mutex for too long at once

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
Reviewed-by: Reviewed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Bharath Ravi <rbharath@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 68 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 69 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 271afea654e2..ba6cfaf71aef 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -86,6 +86,12 @@ struct iscsi_internal {
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
 
@@ -1611,6 +1617,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
 static LIST_HEAD(sesslist);
 static DEFINE_SPINLOCK(sesslock);
 static LIST_HEAD(connlist);
+static LIST_HEAD(connlist_err);
 static DEFINE_SPINLOCK(connlock);
 
 static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
@@ -2247,6 +2254,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 
 	mutex_init(&conn->ep_mutex);
 	INIT_LIST_HEAD(&conn->conn_list);
+	INIT_LIST_HEAD(&conn->conn_list_err);
 	conn->transport = transport;
 	conn->cid = cid;
 
@@ -2293,6 +2301,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 
 	spin_lock_irqsave(&connlock, flags);
 	list_del(&conn->conn_list);
+	list_del(&conn->conn_list_err);
 	spin_unlock_irqrestore(&connlock, flags);
 
 	transport_unregister_device(&conn->dev);
@@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
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
+	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
+		uint32_t sid = iscsi_conn_get_sid(conn);
+		struct iscsi_cls_session *session;
+
+		mutex_lock(&rx_queue_mutex);
+
+		session = iscsi_session_lookup(sid);
+		if (session) {
+			if (system_state != SYSTEM_RUNNING) {
+				session->recovery_tmo = 0;
+				conn->transport->stop_conn(conn,
+							   STOP_CONN_TERM);
+			} else {
+				conn->transport->stop_conn(conn,
+							   STOP_CONN_RECOVER);
+			}
+		}
+
+		list_del_init(&conn->conn_list_err);
+
+		mutex_unlock(&rx_queue_mutex);
+
+		/* we don't want to hold rx_queue_mutex for too long,
+		 * for instance if many conns failed at the same time,
+		 * since this stall other iscsi maintenance operations.
+		 * Give other users a chance to proceed.
+		 */
+		cond_resched();
+	}
+}
+
 void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 {
 	struct nlmsghdr	*nlh;
@@ -2414,6 +2468,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
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
@@ -2743,11 +2803,19 @@ static int
 iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 {
 	struct iscsi_cls_conn *conn;
+	unsigned long flags;
 
 	conn = iscsi_conn_lookup(ev->u.d_conn.sid, ev->u.d_conn.cid);
 	if (!conn)
 		return -EINVAL;
 
+	spin_lock_irqsave(&connlock, flags);
+	if (!list_empty(&conn->conn_list_err)) {
+		spin_unlock_irqrestore(&connlock, flags);
+		return -EAGAIN;
+	}
+	spin_unlock_irqrestore(&connlock, flags);
+
 	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
 	if (transport->destroy_conn)
 		transport->destroy_conn(conn);
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
2.25.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200125061925.191601-1-krisman%40collabora.com.
