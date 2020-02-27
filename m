Return-Path: <open-iscsi+bncBDA4VMEL3QNRBUV74DZAKGQEL7QSFJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A219172919
	for <lists+open-iscsi@lfdr.de>; Thu, 27 Feb 2020 21:00:19 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id t14sf287665wrs.12
        for <lists+open-iscsi@lfdr.de>; Thu, 27 Feb 2020 12:00:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582833618; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYxwWS5J7KfO6x4AQXprwNLzInxxja/mpWYeXTO3UFYnh7ut0/C79tt5EnN9U5Vr7C
         0gUUGxX+wsWfSyjzkM3uIsoVXdn0WZtQFg2SqkY8W+ZK7YRLMdMkr8bA2wbCp8QSli3P
         /DfqMlbgKs4ioIo73An4Kpj2R5sNo0XIKXecxdCwK7/rk9+8z/bXeeabZaGV/YEUpTOs
         A+jHUQ3j39u6MCrzTxB/G7XLE5Z6Q2FO1CKBU/VXaHHG+ULsx/imHIR8itOga2pODL8A
         TO+oZciaVpJaZo4FIaksC40Iz51pse2Bgrk4ulKoM3fvANIaAJcy80Q2241a4i6kDyYG
         a/Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=0p/BLU7gMkwXrWtrZiUAmITJn0xTjNgEMSdu+cqq8SY=;
        b=t4+fCuujNxExnOyf6kaZk2q3nP/KolPpG5BVh4DrN59OPvBTfq/7FYkNgW17Gi6/wd
         nhy5Ious7d1jnk+r8fvbGg/VXIkiLus35so0XWVE2M5d3dg/eKhI1FW+kkgfAkVyP2cm
         2z5sJ4MXK1L6soqciCyuCqgNcAJpdam4zKNOOEmlE2sKMfQ6UHqnByfAvFSicayx/ZgY
         njdYMfyMYYOJKpJy3JS5lCKOo7khE8H2y6365G5vEnbRQZctZgCDrKr7J5ExbTrGV8sG
         jhPJc2QVLNfSau+uBECytyoBGxXG5V2hNjjUNFPvhMVx9X9YIFFGG8dWL1g7j7DDZD4t
         uw6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0p/BLU7gMkwXrWtrZiUAmITJn0xTjNgEMSdu+cqq8SY=;
        b=Z1AWm/lbVljBiXJFvaXA4G5kAznEC/TPZCV9x2RTUc8D7rRUCWoj/QWVffxYRlk97n
         na0UeTMHNWeVjIljcyq1e3ocit+6A14BzRSXLk9mD5eb3iTHpUkoxHIIcgZZ8j8SiyuG
         QsPMkvQ+X6yezbxkDXTWHTazNoY2oGXRd3PUvC6fNrUw9TxomqvXxCXeC7Ss2ou4H1cy
         07eExVj+nwaVitHRG/xsTNno2Aos/oZHcQmpnQ2O14V7zIhhOkgJaAx4kzf/Mw0kFGZc
         dZNm+8gBUWDIt8LMSasO5fwhwK1sJNJYtAJ155DBm/g1Mc+TOWhKuXssxWDInVbYJj4c
         EE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0p/BLU7gMkwXrWtrZiUAmITJn0xTjNgEMSdu+cqq8SY=;
        b=TIj+u415K/zEYxb0cM69rFzMBOs3ovLepvbVnb29ICoKYWaH0uB0BhQxuCBdL+Vknn
         Rmi9yeA5cnQ57s68JVl3jDBHqT3XK4QAYo7r9p+szD+3cBw+hwF886Uy3DUN4Y8Si+0B
         bi8u66qsM5XD6Qv3kpA2Tk3RTyLzL3z3usPwCwLCNgAsw+F2Q9Gvkz/fT4/Ya6mlIwRD
         IuzqEYBw6Mp5mcANJDwXEz741ccT3eelyzT4K7fvtKOhlQvmt8KHDCsEX9Zp1xJBemx5
         RXzZ0RuEoc1xtzPtajc/guXnRfh371xDfmz8M9viTUITZo+m/KTslYRhM8Nx69jrIM8G
         OlEA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVUDGSzcE+YzfwjpY4EIRO+kWxscWhiVb8JbWnYQ4rRfzpnRo2e
	1rWfCKz9szoyDiDcWD94HXs=
X-Google-Smtp-Source: APXvYqx8FMd/jGh5YHnM5wBngvLu0Yqo4A/oQ5HIprqqLcTK8yuGQC0nMiOmvJuBma0UxhfJcyVsog==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr536212wrw.374.1582833618631;
        Thu, 27 Feb 2020 12:00:18 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:100e:: with SMTP id a14ls237586wrx.2.gmail; Thu, 27
 Feb 2020 12:00:18 -0800 (PST)
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr522778wrt.403.1582833618025;
        Thu, 27 Feb 2020 12:00:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582833618; cv=none;
        d=google.com; s=arc-20160816;
        b=S7ZaaXEfAK2eRfLurj118cks6N6QznMehqfznzVUNssgZHpXTADba53hmfyofcS1AK
         rAn/nxKHQ8d5rs+YyBns5b6ifAv/8y3rxGlHmQlyf4k5mrSyBmXbiiBiujlPaHpHeU9m
         s8EJ0Nod14wQcZCVn1o4+QzKb92nVHv580TTze89DZNnalWSFOhf7S8IvT0oIV515aD+
         /fkOjonb8KVfDZnS6/oPfJaW8bI+tVwASUoIF/vKuJTL9OR+N+dPHAeBN63GwFM0uPHI
         EEAoh7//56SMReAGKFiU9aESYPtX/t/SK/3zH1Ytdvo3mJqeKvKQAS+lLWFViBJjjJWn
         RN5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ikeBiG28USAbpsAwkp4JeDnxueJKLluQte9aT3nMRqs=;
        b=rleXsO/Avq9b+byhW4fSY/yppkiSh/AAco83nWAtiWvlYMuZoS8vmMpY5HZh5Cvl9t
         QiP1zhJB2j4/2vwtlwLHH6HCw78tlzdxOKdLh7pB6Ev5RY6KJRm79DuqgIg3+jNH5n5a
         f+gPV/fnbnXG0UsA9bZxzd1bQPLvqk0MwVfE8NlZ7H7FvGNX2vbmja9//hmCtE1E08Vm
         Bt1Zn9pcToGNjgGreQelkJd8vJSmPanmkfJTJTVouKMh+YzUZB3Cxi7zxRocaSzifaNe
         /JIbrJn1byjJBmxM/SMabvBYhQQoNsRdKlPwWc38N6U5ftQHV2tBXBOd7Bm3kriEAub8
         Yf6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id y185si567416wmg.0.2020.02.27.12.00.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 27 Feb 2020 12:00:17 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8B0CE28EE39;
	Thu, 27 Feb 2020 20:00:17 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	Frank Mayhar <fmayhar@google.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH RESEND v2] iscsi: Add support for asynchronous iSCSI session destruction
Date: Thu, 27 Feb 2020 14:59:45 -0500
Message-Id: <20200227195945.761719-1-krisman@collabora.com>
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

Reviewed-by: Lee Duncan <lduncan@suse.com>
Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
changes since v1:
  - Add -ENOMEM error return code

 drivers/scsi/scsi_transport_iscsi.c | 38 +++++++++++++++++++++++++++++
 include/scsi/iscsi_if.h             |  1 +
 include/scsi/scsi_transport_iscsi.h |  1 +
 3 files changed, 40 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index f3f0ecdb09a2..17a45716a0fe 100644
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
@@ -3631,6 +3643,23 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
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
@@ -4676,8 +4705,16 @@ static __init int iscsi_transport_init(void)
 		goto release_nls;
 	}
 
+	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
+	if (!iscsi_destroy_workq) {
+		err = -ENOMEM;
+		goto destroy_wq;
+	}
+
 	return 0;
 
+destroy_wq:
+	destroy_workqueue(iscsi_eh_timer_workq);
 release_nls:
 	netlink_kernel_release(nls);
 unregister_flashnode_bus:
@@ -4699,6 +4736,7 @@ static __init int iscsi_transport_init(void)
 
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
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200227195945.761719-1-krisman%40collabora.com.
