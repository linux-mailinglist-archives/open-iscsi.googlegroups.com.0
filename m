Return-Path: <open-iscsi+bncBDA4VMEL3QNRBDNQXHYQKGQERKYDU6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F51149E61
	for <lists+open-iscsi@lfdr.de>; Mon, 27 Jan 2020 04:25:01 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id r2sf5401163wrp.7
        for <lists+open-iscsi@lfdr.de>; Sun, 26 Jan 2020 19:25:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580095501; cv=pass;
        d=google.com; s=arc-20160816;
        b=BgaXNtNh7u4nuxUg59YCvUkQKA2owk+nRTL5/Q44TdiIQa0BweeKg9XOOnXc4tQk6D
         B+OPojRYbMJV0nILq5B9vctcpliEkCWi9t6zSqiDGw8Xt5CCcZT6paOjtPAklTwMcaFt
         KjH24+8VMVsmmGdNl/LCgCJIm/YWpdk1IWzvz1jxnkB4cuWxJGjBUK9QsbPsbFQI+fhJ
         ULgbdL+tzN1OKfUkQ4Hvp6w5lFbAgB9AdHtguwM35+J2P/GmrGHDNz1KX1zTE54/alsO
         5lcmrWVzagrG1QPfutZ9hfKF8bL/e55cRgqxnthd8E6VxJFBE1+nU+e2oEXE1t5OPAon
         7o+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=n38Dd5wzifrqzCbLGrmnDHFk2H1v7sSQPNWRXaSO8xA=;
        b=GEXvQ2BNd3+BfTcsq2Ey+QZdHN6ZhJIRfbFFZIEhR5pQkqpjJSR9t0AY1ntLESHamG
         G8uUdCju/whcNARTxT6KnI9mQoh5MQqJemS31o0C9f86WKfCO/C0g4w8yoeeORaergeA
         uh84vkrNcFe+LNKXW0e2Z+DCWf0kvfhgTROPIhp2sZ8f9brmDNMoGsQh317JPgOIRoMn
         0A71sNJ/0/qOIRWmr8JQaI3GlzVi4fAJ9cJHMJjgQXb/UVE0zeJDXG5woH9z96WvQVGQ
         Q5DJC9sfmMgBVprSRZrrO1UaE2upFHPXSbOJOxBQQdBV91sca9uKhYZkxghaTLQ3+xfW
         gB3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n38Dd5wzifrqzCbLGrmnDHFk2H1v7sSQPNWRXaSO8xA=;
        b=XmfWNohyjz738ZQUysC+6175BCVBMl3gypzgEysHeyVYEd8DWWTxZuM6uxoc/xCfYo
         3wxj6/IoOLQk+V4DejjnD+thBMWrnSua33PKvJPFp9KdUaXj2e5cY3gfK4+v6pvtoW4y
         70Qy2ZeGRUpUj/L0s3H6b4+LBjH3gdbk7+n0MFvJc4bNeWP4TnEL2lIfdZbXpuHPk7Wr
         JYmMILr6+1eW1h52263t2jvIxzGElVBOGgOMyBaFADv4/o1roMZQMGsmr825pbjYAPgE
         B1FPBXRbuekUYSGcLL3K88QLAayd7DMfZTx90Zp0xnisIrbkrF3iSam8a825kN/v+oZD
         8uCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n38Dd5wzifrqzCbLGrmnDHFk2H1v7sSQPNWRXaSO8xA=;
        b=d5fuQIwKcjEXPkWE9jBsdj7+MlbLDAeS2opMeBWBShhQpRGn3m78OVKWY1woKqSUP2
         Kpk1cGFtM0orkOL47wcG45i6eQTieszLn8+oeLFxrNPyiMXC+0oIyle5ZBEZoafBRgIo
         YyCSlOmlSV0qBdMPYgHp59VVaplbOWkf5TXq49gGiM9FiampXIAhOcXmxqurkKX4vG91
         Viux6YBvzAUrnAWLBBPm/GIj//HoAUlLTwy7RDMZF0vNCkMNSEd4ejToBUhnLSb/I9Jx
         H7y0tlbzWwHfrlRcS9ev6BiYT2zo9JdH9tro3UepVPEgwekZaG/sobdy3YUIngSgxoOZ
         FkvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWCv+Bjcr1cqW0y+RD2qYU2SivvpIEWAXwQQai42pwA9Gy4NQIh
	3+1ONzFGh5MlGshEBxP/uF8=
X-Google-Smtp-Source: APXvYqyGdHOiNQ5vxSVGwXHmNqsQ3nzG9S1fvz1+2LlHaEBD5zptWkJJcZJb4UIDDhvenmnHjKUcmg==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr11259532wmi.101.1580095501515;
        Sun, 26 Jan 2020 19:25:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6912:: with SMTP id t18ls5929972wru.7.gmail; Sun, 26 Jan
 2020 19:25:00 -0800 (PST)
X-Received: by 2002:a05:6000:1288:: with SMTP id f8mr19626430wrx.66.1580095500758;
        Sun, 26 Jan 2020 19:25:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580095500; cv=none;
        d=google.com; s=arc-20160816;
        b=fA4NRHAdYmXbXjW7ToYRLGbsRiEQuOmcSrRbeXGLqYDSSNuvrNq3R1LrerRyaTgePM
         dPREY+zlPt2i5yy7Hd6SlcIoru7MGxLmV48nVuVwiNurxXjIE/umGnWroV242SYSfs1n
         8MClJ54NM1auFtJY23P09S9/TPjXjXOnhdT4yNUWKCccq9hvrIZwbN8nQ8XoFqwqxFP6
         eaP4/NE0Soks62w58rsNfbxzP2cgAWxEWxnPgo8dL5F71P8BgsdBnQSIlY5hcs4rShan
         s9+8eA1SJ1cRA1QZlJ/+KGg0C8dU18ZS0eQYjsDA0+crLp322/l2acXkCs633EysO1S6
         6BSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=4RfH0T3L3j/qguP6FtbHE27g698ZR78cMGwSigrIVEY=;
        b=icjrviJV3VuIMl9P8h/HiCcWqXywI/xQfsv6yHV0zWgq4PtxISFMypGylW572V72td
         9FMGJG/kGqlUFxYanQZCoGulmuzHOgE6n+abMs30gPADnSFHE3pHMkjJv1uwpD9NxJYS
         pY+QsLQmQf1EwvefRD1eHiPahuELIzd2xfJlPzAwcCqYweTXVLchVsZjDB+ris2r8lVF
         PFbhquBmXm1HnivEExjm03U9cb7QY5E10QO/YAZvp7Fbk/3doyhBt8gYyzmiNMX3Gh1u
         DpqqyFsRyYGhZisIzyqNzlM32zRmZAPiea3vhTtRk0FraQsipMJ0BRr/1cY46oCfOfmj
         6CsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id e21si279982wme.1.2020.01.26.19.25.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 26 Jan 2020 19:25:00 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 1AA0C292ADF
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	padovan@collabora.com,
	Frank Mayhar <fmayhar@google.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH RESEND] iscsi: Add support for asynchronous iSCSI session destruction
Date: Sun, 26 Jan 2020 22:24:50 -0500
Message-Id: <20200127032450.924711-1-krisman@collabora.com>
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

From: Frank Mayhar <fmayhar@google.com>

iSCSI session destruction can be arbitrarily slow, since it might
require network operations and serialization inside the scsi layer.
This patch adds a new user event to trigger the destruction work
asynchronously, releasing the rx_queue_mutex as soon as the operation is
queued and before it is performed.  This change allow other operations
to run in other sessions in the meantime, removing one of the major
iSCSI bottlenecks for us.

To prevent the session from being used after the destruction request, we
remove it immediately from the sesslist. This simplifies the locking
required during the asynchronous removal.

Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 36 +++++++++++++++++++++++++++++
 include/scsi/iscsi_if.h             |  1 +
 include/scsi/scsi_transport_iscsi.h |  1 +
 3 files changed, 38 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ba6cfaf71aef..e9a8e0317b0d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -95,6 +95,8 @@ static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
 static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
 static struct workqueue_struct *iscsi_eh_timer_workq;
 
+static struct workqueue_struct *iscsi_destroy_workq;
+
 static DEFINE_IDA(iscsi_sess_ida);
 /*
  * list of registered transports and lock that must
@@ -1615,6 +1617,7 @@ static struct sock *nls;
 static DEFINE_MUTEX(rx_queue_mutex);
 
 static LIST_HEAD(sesslist);
+static LIST_HEAD(sessdestroylist);
 static DEFINE_SPINLOCK(sesslock);
 static LIST_HEAD(connlist);
 static LIST_HEAD(connlist_err);
@@ -2035,6 +2038,14 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
 
+static void __iscsi_destroy_session(struct work_struct *work)
+{
+	struct iscsi_cls_session *session =
+		container_of(work, struct iscsi_cls_session, destroy_work);
+
+	session->transport->destroy_session(session);
+}
+
 struct iscsi_cls_session *
 iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transport *transport,
 		    int dd_size)
@@ -2057,6 +2068,7 @@ iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transport *transport,
 	INIT_WORK(&session->block_work, __iscsi_block_session);
 	INIT_WORK(&session->unbind_work, __iscsi_unbind_session);
 	INIT_WORK(&session->scan_work, iscsi_scan_session);
+	INIT_WORK(&session->destroy_work, __iscsi_destroy_session);
 	spin_lock_init(&session->lock);
 
 	/* this is released in the dev's release function */
@@ -3617,6 +3629,23 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		else
 			transport->destroy_session(session);
 		break;
+	case ISCSI_UEVENT_DESTROY_SESSION_ASYNC:
+		session = iscsi_session_lookup(ev->u.d_session.sid);
+		if (!session)
+			err = -EINVAL;
+		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+			err = -EBUSY;
+		else {
+			unsigned long flags;
+
+			/* Prevent this session from being found again */
+			spin_lock_irqsave(&sesslock, flags);
+			list_move(&session->sess_list, &sessdestroylist);
+			spin_unlock_irqrestore(&sesslock, flags);
+
+			queue_work(iscsi_destroy_workq, &session->destroy_work);
+		}
+		break;
 	case ISCSI_UEVENT_UNBIND_SESSION:
 		session = iscsi_session_lookup(ev->u.d_session.sid);
 		if (session)
@@ -4662,8 +4691,14 @@ static __init int iscsi_transport_init(void)
 		goto release_nls;
 	}
 
+	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
+	if (!iscsi_destroy_workq)
+		goto destroy_wq;
+
 	return 0;
 
+destroy_wq:
+	destroy_workqueue(iscsi_eh_timer_workq);
 release_nls:
 	netlink_kernel_release(nls);
 unregister_flashnode_bus:
@@ -4685,6 +4720,7 @@ static __init int iscsi_transport_init(void)
 
 static void __exit iscsi_transport_exit(void)
 {
+	destroy_workqueue(iscsi_destroy_workq);
 	destroy_workqueue(iscsi_eh_timer_workq);
 	netlink_kernel_release(nls);
 	bus_unregister(&iscsi_flashnode_bus);
diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
index 92b11c7e0b4f..deacaee53e61 100644
--- a/include/scsi/iscsi_if.h
+++ b/include/scsi/iscsi_if.h
@@ -60,6 +60,7 @@ enum iscsi_uevent_e {
 	ISCSI_UEVENT_LOGOUT_FLASHNODE_SID	= UEVENT_BASE + 30,
 	ISCSI_UEVENT_SET_CHAP		= UEVENT_BASE + 31,
 	ISCSI_UEVENT_GET_HOST_STATS	= UEVENT_BASE + 32,
+	ISCSI_UEVENT_DESTROY_SESSION_ASYNC	= UEVENT_BASE + 33,
 
 	/* up events */
 	ISCSI_KEVENT_RECV_PDU		= KEVENT_BASE + 1,
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 2129dc9e2dec..fa8814245796 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -226,6 +226,7 @@ struct iscsi_cls_session {
 	struct work_struct unblock_work;
 	struct work_struct scan_work;
 	struct work_struct unbind_work;
+	struct work_struct destroy_work;
 
 	/* recovery fields */
 	int recovery_tmo;
-- 
2.25.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200127032450.924711-1-krisman%40collabora.com.
