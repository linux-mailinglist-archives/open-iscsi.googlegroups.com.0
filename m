Return-Path: <open-iscsi+bncBDA4VMEL3QNRBTUIRHYQKGQEYSGHADQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 6928D1414D9
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Jan 2020 00:33:34 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id f11sf17538261edy.22
        for <lists+open-iscsi@lfdr.de>; Fri, 17 Jan 2020 15:33:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579304014; cv=pass;
        d=google.com; s=arc-20160816;
        b=eSDd3O6BGa+0vF8rAhWp1ch5PWi8YyHAqmyYlhnZpVOg6GIiZyyYiLckbzFDedD/7x
         bnqT2FVYT0k5sShdfOgoDZVwX4UZBU3LK+Fp02x0knTnHYEnv2k7xK3Ves+NNoCiqtdt
         D33ac8UnhC0b2F5I6ShCNsB7jVYBsIFLM/8qJZ4JeqJBIgoHa5BZpbbwJYvJlxXgeZGE
         unUaDbOfdUSJu3OjWXmvtdoLisRoIX2gbZiRRszQ8VDMMTvH9EJdQSix+tytCTCGB6+O
         s0OtwK0cTdlsNE8t+qlAKknpxb64pVeod9X0gpB66kRpayxWpa9xGKqcrYi6nFam3ZUP
         8+gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=kPbQJAF3sEpSTtYd1O/OeG3F9OqJ9PqOahs4nMJILt4=;
        b=oLQKNSLBpq7vk/l2CTiMtLJYlDE1nUenYwGk18yxzWwfZc91p/yqcWf79Qw3aZLFUZ
         +g88KdD56oULjDtLLlwmByoN9NqEh8zFa8IZ43j4GSvOq74d4o4XmDYLFl0WvEBXAbir
         sML0bdvT8zXLsu0R4/i9QWb1yNxKflXHXi4S+zbtXgQQL1PYsnbX2Jd8dlGrvcaQxtjA
         NqvTiQ5oqQi9dBAEjFpYA235AQbFoh7JrJhknltSK/HJgBJbtkaH3pP88unnA//cj8bx
         0SU8azigWHAYbB6cURlmMBk7UxKqL+RdUctePrelAWJLrpylZjipmmjfWRwlDgesnxhL
         knQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kPbQJAF3sEpSTtYd1O/OeG3F9OqJ9PqOahs4nMJILt4=;
        b=bvZQ3F4v9UC6wTWCeu7lfKa0tAf1V3eVJlHvO4Y0kmFd54mixogJwD1wTZzMLyaznE
         gqmf6HKTaQ4QLWfVJ/K48TWjDEu582jz/IZfTkimLdLT4UAnAhsO94SUQwdhIQ1cXW+h
         QewjEF2kVwxxsGNK3U5nZhHCZQkxjIROKviL9CJR6fId9jBwfbVyR+/K8c5mFyBAPeeJ
         01Hoe1SCO42hs1DNNmEGb+wwVYmE2tEUeVnMc6kd7vX7HSqinwgq4qJFtLGcGMwHjO9Z
         gFdsLmz8xq67KnTkJkwjYtMNy6lPxk9cmLYYxxbq6Ct/mso5EyPZkd46fe8K4WWK6cuT
         nuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kPbQJAF3sEpSTtYd1O/OeG3F9OqJ9PqOahs4nMJILt4=;
        b=k9tB/UMOT/Vj6YRQw5atOTYcO2fajVbImIkovnBVnuVdmSuAwOs3qeGcFbpl3fHqCh
         bo9iJFtpnh3C6IuoDNyshLc7SZi2RE7WA0fSzmH1w15tJAIOxg7ueVgi84K/rB82TUD4
         9IGPpL8tSZjHxP8RvcZZQA/SGJ9WOyNlW3X7X/Ft7WNmuYee5ODM0LPFRQVQ9QhdEflM
         9aSj4CmE1FVVHzjpUFGzjGpjNUsN50NMDKGtdonTdBow3ug8I98QXZjBf2jMXQJSlDqe
         eQSDVCnnY//oW8oQbvxg3K6EI4JkL69bIrvHRdwaQiFdto8Fveg08Wc87ERXFN7sqtmu
         p+kg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUG7eFt4Hyen6BLVOt+lvpcwhhltET/9PBkclgH/DXK3xTaK31H
	cieZOH6NvSVAY5XC+ASJ3S0=
X-Google-Smtp-Source: APXvYqybJz4i8v+2cYbRSzjAEvTlK6zUGW/A8fS++9bSK6dvLmc0UuYORXp8Hms0FoHyxtsrWTfzfA==
X-Received: by 2002:a17:906:8510:: with SMTP id i16mr6851506ejx.360.1579304014093;
        Fri, 17 Jan 2020 15:33:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:c82b:: with SMTP id dd11ls7443030ejb.8.gmail; Fri,
 17 Jan 2020 15:33:33 -0800 (PST)
X-Received: by 2002:a17:906:3596:: with SMTP id o22mr10218113ejb.235.1579304013574;
        Fri, 17 Jan 2020 15:33:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579304013; cv=none;
        d=google.com; s=arc-20160816;
        b=fdHHWHZ5y0dvBS4IVkaS7TpnNw0/n4r4qlNN8cLpkdKxpqJpCWTyEWdK4BFXcvHEbE
         b2RE6hqvPw8UBoUZcvk66WMEKE7ZdPR+/qp9No8justp4XpKmRqht6VFJX4BhTZgotp/
         KLy/YZMXIf/zeZN0495yhnsCBtPYsAa7kztPAQOV88Wsah6l05F4UF4QMjfSnYnj5I8f
         DAhd2/5BGZbNt+7cvLRzQ3cvDVXq0JNQmG/UHle3SHd+t63tbW0RIC932z2bAFj/y+sX
         VhN6xS3TqDrWGYQFTpAQiaoML8rmU15HOGBmOsFbXoS6HbXv+z5exJI8P9v3Cy1n7+aD
         Wfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Xpa9KPinqXIWIK9sRVraan/0uN5PHRoQwy3dCmPOinI=;
        b=ocD1DuZAM/WaNqK6Ok+KHtESMAT9QpJhDdtfW7MAIfUXMb8bRXgcpHMuaWfMnJj4K1
         EWzlzGhqKcPCWSyUgNMlKEIAezcLDSkQQp09XBT16eJ8rM5ZsO/mEOPu2MWuPcD5B3dL
         IHeakWeyTnr+wy0IXHx6ZqCWjqaVX2FvcsmpF7cfDQ3hKHCctnVTcsuH80uquneBWMuE
         d0DEB3e+r0v1u73cZtXyLTLZdC1yEpUeaiHL3feynnZpCIISa2kvHo6r9F5tdDYXQtVe
         GvGfBuBPZVG+XSPsI0V8vvEwboo0jpRHI/6qeR92DNkbUcYAD4nNFCqsgRvQWwVgW/4Y
         l9qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id ba12si1095157edb.3.2020.01.17.15.33.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 17 Jan 2020 15:33:33 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::787])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D8BC0293EDA;
	Fri, 17 Jan 2020 23:33:32 +0000 (GMT)
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
Subject: [PATCH] iscsi: Add support for asynchronous iSCSI session destruction
Date: Fri, 17 Jan 2020 18:33:28 -0500
Message-Id: <20200117233328.1052604-1-krisman@collabora.com>
X-Mailer: git-send-email 2.25.0.rc2
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

Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---

This patch requires a patch that just went upstream to apply cleanly.
it is ("iscsi: Don't destroy session if there are outstanding
connections"), which was just merged by Martin into 5.6/scsi-queue.
Please make sure you have it in your tree, otherwise this one won't
apply.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200117233328.1052604-1-krisman%40collabora.com.
