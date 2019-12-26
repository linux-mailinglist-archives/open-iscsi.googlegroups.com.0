Return-Path: <open-iscsi+bncBDA4VMEL3QNRBANZSTYAKGQEH3MHSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2330412AE99
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Dec 2019 21:48:02 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id d7sf4988917lfk.9
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Dec 2019 12:48:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577393281; cv=pass;
        d=google.com; s=arc-20160816;
        b=wnLxLa2XvGxuXZd0TyDypLKhw5nVMo3/dC15Rzb9wqulM4wTDA2r7qMIcyoox/JPvX
         ZMWnWf5TYJoVDgNkCo44ZKbxkyAeN0qjJt/V3ff1uNZpOEkdYpaDuLl8P3AHTPiUktUg
         8LmX6z7mS+TDoY1Ckp5djP7RLokgzcbBOn5mg1RWW7i3B9ApuBYRj9/hkeDpYwEeXJEf
         YT6gqngO4l5asGUOCHeihDVPR4lVso7ogUlEB5Jh2Ikcp7WIeL84HvE6LLa5UY19cErO
         6H+1BxBoa/B1shoQ8CokxmR/+F76x7fy5QqTyb7/KFS3UlyzApTPM8eqKZxmET69Dkxi
         gT3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=QrfjRC2FOLcj/JvaP1u8VJZvd7t4ITm4BfJImaqOywg=;
        b=R5lv/zj5b+cMG8/1EJzn4VkkzTM/8BYvMLvfLi0npDSgIeHUsDn89y0OHBKm+TN4+l
         zMlV8M95ScMzHMkLqSoXaKNLOAcq3Y1lpF9486/w1vU2WmkwPf2gqPg0KNxtgX2TlBtL
         5LFmDsS16PL6n8U06xqth0v1uAzvM+cNDQv1tDU2bwL3mAVFVOoj7A8UBNU/j/3hmMN/
         Zu5wY3jlgqytLSxy/+xukVuVqHaNMEn1GzYtz2O9d5V4UMjLE9mjFUxjAEx25mbKCCwq
         aIGWJqGOYNHndDaZocXConJ9PVbxlAB1sTL686T4K2ehdfiYoTHQ3Bf9nkA5c9jC7pNW
         ENxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QrfjRC2FOLcj/JvaP1u8VJZvd7t4ITm4BfJImaqOywg=;
        b=ShbCtvm7ixwS0GywJsdA6FuAp3MWi7rpfbF7tDRqLJt0Krt3dD6Hya2WED0vdCSXoe
         waCGOzxxsBMkrq3/gCdR8y7nyOPfBG38eJoxDxh0U17cJ82YKaTC1pQy1JgLjI0TUSL4
         Slx5YtdCEvxrLd3+BgYJbsipkfawXju6zAah37jRPJ4jhqFwRUELfcO/B7Ut9VR87DdD
         hxue6ZxLu39WDfLuh+tXFkb2/6Niy0xAP2h+gEHRUZEF6XTQVn898e7zr4fUYvwKbilO
         paBgK7wfemb3PiNc9WAawtcU/+aDvau30hRxV2fLMjQCvcpulWkdyroxciK6xx8+amih
         N2UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QrfjRC2FOLcj/JvaP1u8VJZvd7t4ITm4BfJImaqOywg=;
        b=guEvKqHk5bbx+SqeJw3D+caFxNZB98Hg38WdSf3DkkeNXwwk9ky6nBQVdCq8DfsClY
         3VSKL9DNDJLjW+3sp1GV0xrTpopVfCA5ABV7Ssr+RpIUNv3AVsLq85FmixKUH6XTvzgv
         K02PGUE+ugYScfFfQJnQpSzdk2cdOKYEsxAa9Yg3JsZbUEoy9sFXCsm8U3Rp9U72EpA/
         0rbv15Bw0s2BpyHdlG6/60LDb6qie1kbl0TVuQC2A1QLaAtyZFzbLWgVaxqEy4PB44S6
         //Y6WxnrybekNo1lnuISsWvy4u4iwZiO+ufH8LSjbNib214Z/DiCsTEFIV5rbYEtyfX4
         Me4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX2eTI96RxX9tp4dSzzgIW7c617iKlwJm8GYsYaJGdcGZ8rMulg
	4CSZ6gG7p1DdSO45SMTq/hE=
X-Google-Smtp-Source: APXvYqzqsQ25w1EtVWSZoqE8RuSz7Qfo5sAA461nWBnYhqFuWEr06PTEsRk1vs878/vkRTMbiqHhUw==
X-Received: by 2002:a2e:9110:: with SMTP id m16mr26762698ljg.140.1577393281510;
        Thu, 26 Dec 2019 12:48:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9d90:: with SMTP id c16ls3035523ljj.1.gmail; Thu, 26 Dec
 2019 12:48:00 -0800 (PST)
X-Received: by 2002:a2e:810d:: with SMTP id d13mr27161972ljg.113.1577393280840;
        Thu, 26 Dec 2019 12:48:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577393280; cv=none;
        d=google.com; s=arc-20160816;
        b=aqLG+R6QxaKkIByLoM4JOEAqHM+NasJpzzZpAhakWyq1VfvRUhAX3ZNDVqSTHphexB
         4+EpKK/JxJuK6RkTkulEDgn6Eh1i33enTwFy2n9dAVeU8WxsIuGdU3sd5SEqMeygacTD
         dyfKN+kiSGUtEVRQMHgyvbZxD3MD6/0nmrpILQECj+6jxHFw0C3nQHAGP9bKmqCfxobf
         KBpIL5kiGVAv6l+p0tArRr3oQMNXl+7BdUDaqZaYN8nzoGaPdBspS+CxV2g7S/ZA8OHf
         XI5/w30FLRQpGn4H/DP3VBkweHEX75AAq/YPomWiDRcC9jSTysj+bH+BRBuNu/adsOaH
         riTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ioIHlITxbmCSVxqDuA4Sg4ZI0vUQK0BKa386zpYzzk0=;
        b=iEUKmmkzBZzhnsUafZWQf77DWW+CPjNaaUBinTkvrrDpAF+Lb0YVzx9h0RyThIa+m0
         YMy0LNVXhHmU8G1VDw6EcGiL+2UCCnw6RG+1g+mBIbWJr97WhYyWPUTb8EmZa49Ostjt
         JXSPKdt45m3K126+rBW7l0RQj35xolA7Yvk5jKFItHuqnFR9iEAyJmzxEULvqa/2S37c
         /JhNqDL2532/dXjgh6W5/f9igLJSv29iWzg9VwALURkeYiSqa0sGr8xx4XgO4jd26uTS
         O6F892XVjAHgtzSRRUszwDNvig3PJNuiEpAcQG5YXbJA/zHnjELM5/fehNobqTxdgK7t
         OAYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id u5si1389247lfm.0.2019.12.26.12.48.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Dec 2019 12:48:00 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 828DA294076
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
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
Subject: [PATCH v3] iscsi: Perform connection failure entirely in kernel space
Date: Thu, 26 Dec 2019 15:47:46 -0500
Message-Id: <20191226204746.2197233-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.1
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

This patch performs the connection failure entirely inside the kernel.
This way, the failover can happen and pending IO can continue even if
the daemon is dead. Once the daemon comes alive again, it can execute
recovery procedures if applicable.

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
Signed-off-by: Bharath Ravi <rbharath@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 63 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 64 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 271afea654e2..c6db6ded60a1 100644
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
@@ -2748,6 +2808,9 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 	if (!conn)
 		return -EINVAL;
 
+	if (!list_empty(&conn->conn_list_err))
+		return -EAGAIN;
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
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191226204746.2197233-1-krisman%40collabora.com.
