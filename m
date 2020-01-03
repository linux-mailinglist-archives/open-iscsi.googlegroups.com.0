Return-Path: <open-iscsi+bncBDA4VMEL3QNRBV5KX3YAKGQENUKMVAA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 441C812FCFD
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Jan 2020 20:26:16 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id d8sf16988636wrq.12
        for <lists+open-iscsi@lfdr.de>; Fri, 03 Jan 2020 11:26:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578079576; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxlVAqJe+gGEVA+iwZSEnCqJvvEHXFxSojQyRW8V9vCNUZAt0YJF2zW8/h7ouSUTlc
         ETktJXK3RZcYsPoUPTMeeSjPoC3TMgDb9+ZrK1p0MYMZYUjRykMXhlY/mhpBUzv6JsgU
         usVjYZHgvwN4yiRsdckItsBiTQraGK1hnT1Bae0eriQa9kSKI5K03L1hQZ21mC5JpW+F
         hPRP45lm0npU9v0juv3ZfDV5Byjh0/lau+s9NlKgMKRtlRIli9v0ye1l4DLfuRkGbqmQ
         ixRaYuwaGR+NarZIgu7KjnWZFPCYjDqsg6rQNCABNvjkVzSBxaDyY+bBgnLvjx6+FfgH
         j6zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=ZuA9yO/pPlOPqs26yGxgejbL2s0f7ZICgwqfTcH1824=;
        b=WvEmue2I1KsCYFwGEAnj6ciem63DAzwLu6Q3mj1QAJSB5/wuFa1plOpzJjSFxVObG0
         YFi34+lB1vTYhN1+V5Ln3bdPXMZaBsp7kxciZkTjFwpbPuP0AMyB0teg9wen1i0SRMJp
         ACMcaw02enobMh4ppUgSzvTaAg0DB5qqUq+qVQyzzPxiTfzRpYBr6cDCBo6IXeVABzy1
         fhafZhAnM1ETfB4uUU4DWrGIj+8Squpi5kQ6bMoZq4Ok0lXfrkbMYwTwoJoVfYTVsIPT
         gIibSgN95jsGLu2EINJiGA0s44HwYqbAsYf2RcPdn8FzK7imO7uDhmcH8Jy6lIm0QE90
         jaGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZuA9yO/pPlOPqs26yGxgejbL2s0f7ZICgwqfTcH1824=;
        b=AMU+uRBm+a996MmWJicEncwvHM2HeXuwB4EnXHkPox0f1sKsmuNTJ0Oi0DpeFE7RzG
         dB9crUEUaHMpoKyRDN+GN+2flWGPNgsQGm79m/C9o3kHFgKFdcWCfjGAp7bfBavqFLo9
         X87fNp7CvI1LZGU0hMzZD2Lpxs7CATYdFAQo8d6rOAdKsXPEX9n2YmYAt0l6i8a6VvB3
         tGWeL3gjUWN9oiIFb/kSk8YvaBGy6za7Whp+9LdMV2vro5ZQNJgaEka4PNO1QaO7INTK
         VMjZGIdHiipGINLqBDjgAsh7ci9hBnXnqH7r1UP5EF25HU2jQKvCcmicI4xkX/rut9Ls
         h8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZuA9yO/pPlOPqs26yGxgejbL2s0f7ZICgwqfTcH1824=;
        b=LOsIWiuC6wpSn2nkxy+UBqPTrSmf5KE79CRWnKixcRaiA7G3e1js2mQzAqgFJDXzGD
         LvEUrSmYqtIaLFyDYQOTPXUha56jHZea5kM02gbyiZB5rFRiIznZqXc6QRpDChkweccw
         W3bWRSCiMJUDYy5sfCngd49bbdPWeJArYPvHkghj8lhc8dPyjOXFSWEPmMHotW1p2BaJ
         W9ReehU/PvdQ8Z8/f6hLaAp9fpVxCN7reKizi5X1IsV8rG0lJZdrNaVPkCiBLIRPObGT
         f+5vWGDNHhN/gAWlZWOBmCQIislYOtoPUMUVUBrNLd0v93g8eMsOTztHzXx7aid5smPI
         hrwA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWBqKsVEzEWg83JbXWO7QijLsDBy/JaNqhdwKsy0t3FZVil+tLf
	H7fJqjOGB3dDmoNJiWCP4E0=
X-Google-Smtp-Source: APXvYqybYifyFCAlwkvutLpu7tuU3cfKdj68ILLzy7TjjYIRcadUpS/Y1Ou4UccEvudNgKDtmw4BOA==
X-Received: by 2002:a05:6000:11c6:: with SMTP id i6mr91310166wrx.178.1578079575869;
        Fri, 03 Jan 2020 11:26:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:f403:: with SMTP id g3ls11196285wro.3.gmail; Fri, 03 Jan
 2020 11:26:15 -0800 (PST)
X-Received: by 2002:adf:a746:: with SMTP id e6mr93557457wrd.329.1578079575402;
        Fri, 03 Jan 2020 11:26:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578079575; cv=none;
        d=google.com; s=arc-20160816;
        b=drCfzq3bgkaWS1yGvrQjrsP4GPdEOwEx2XeWXlP3dWfBkmxSNhiliVnLNc5fAXe6fH
         cnGyTADNfGeQuPSm5GW2Vkn7L9krmiGt4EFshGkyDCagaba6vu1Q1pQPNg7zaTf4KUMc
         sFFOTZiyp19fZc7KSTGCYbzAU8BeeRIelpAvCeH3VUKzIy0qdV0WiRuniEeMILiI1aVu
         CR3fgYhgqtksll1UCbmKAmQ3NDldwShv7m9qyox3Aym0zeIdV8xJcWkCGeKizG63Bl/Q
         N/NTxvAEbmlH+yrOwbMGd0L8Nv1VmxHs9Uky1/WhtjDChTfCvyonRvY/IcuWOydPRNoO
         DTNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=0j8nlOmHmMNkYz3Xj2PLVSANuMrmaoLJYeJklutR2p8=;
        b=h9kOIY6UPW38DfeB2WCpVmLXxUvSFugnqJqzaUepkW1lJIRSDUG8eyOzBvLC0OMYhA
         Y3BNFytCktgsZNAGafdEfwTCsiDRNgd36pT411SjTGcrdvL4uahu74gCLM5t1Co+stN4
         2UtrkUPoQydAHi1V0p7cj9JcQkF2UjrMxj33rxUwy2JLVOr1rwmU/ugn9bxCU864sIUZ
         G5vcTsJgOmNMVP5fX0QWBLz4xJHb0mfSI+/loCX9r0kfPek7wbbt8jfBxjOB2ZLDqb+B
         mlP8XNrZImiqfZedw5UNSLjhhit/sdI89YnvpCY1ETiSPcJVc3kvBxkHaxO8CJ46Ou7m
         /q9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id s139si432705wme.2.2020.01.03.11.26.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Jan 2020 11:26:15 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id CBFC828F6C5
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Khazhismel Kumykov <khazhy@google.com>
Cc: lduncan@suse.com,  Chris Leech <cleech@redhat.com>,  jejb@linux.ibm.com,  "Martin K. Petersen" <martin.petersen@oracle.com>,  "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>,  linux-scsi@vger.kernel.org,  Bharath Ravi <rbharath@google.com>,  kernel@collabora.com,  Mike Christie <mchristi@redhat.com>,  Bart Van Assche <bvanassche@acm.org>,  Dave Clausen <dclausen@google.com>,  Nick Black <nlb@google.com>,  Vaibhav Nagarnaik <vnagarnaik@google.com>,  Anatol Pomazau <anatol@google.com>,  Tahsin Erdogan <tahsin@google.com>,  Frank Mayhar <fmayhar@google.com>,  Junho Ryu <jayr@google.com>
Subject: [PATCH v4] iscsi: Perform connection failure entirely in kernel space
Organization: Collabora
References: <20191226204746.2197233-1-krisman@collabora.com>
	<CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
	<85ftgx7mlr.fsf@collabora.com>
	<CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
Date: Fri, 03 Jan 2020 14:26:11 -0500
In-Reply-To: <CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
	(Khazhismel Kumykov's message of "Thu, 2 Jan 2020 13:24:39 -0500")
Message-ID: <85r20g2vfw.fsf_-_@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
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

Khazhismel Kumykov <khazhy@google.com> writes:

>> >> +       if (!list_empty(&conn->conn_list_err))
>> > Does this check need to be under connlock?
>>
>> My understanding is that it is not necessary, since it is serialized
>> against the conn removal itself, through the rx_mutex, it seemed safe to
>> do the verification lockless.
>>
>> It can only race with the insertion, in which case, it will be safely
>> removed from the dispatch list here, under rx_mutex, and the worker will
>> detect and skipped it.
>
> My worry is the splice, which is under only connlock, not rx_mutex, which
> might lead to UB if we're checking empty while modifying the list_head ?

Hi,

Please consider the v4 below with the lock added.

-- >8 --
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
Reviewed-by: Lee Duncan <lduncan@suse.com>
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
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85r20g2vfw.fsf_-_%40collabora.com.
