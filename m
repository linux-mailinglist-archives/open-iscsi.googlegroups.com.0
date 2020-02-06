Return-Path: <open-iscsi+bncBAABBPHHRPZAKGQEAFL67FQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 356981598C5
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Feb 2020 19:34:37 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id q135sf7691861qke.22
        for <lists+open-iscsi@lfdr.de>; Tue, 11 Feb 2020 10:34:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581446076; cv=pass;
        d=google.com; s=arc-20160816;
        b=qd3FX+y7nHl8ISeBmOhZc5WA+359D1qV5kkF+sd+uwog87YYWDrKvDF9SxbZFzFQ/O
         HBMqmtWANylTSAEKq/jWsh/FcDX7Qmu2j6cJqouXAN7zKICqsKNKZ0x7nNuycmZtutrW
         QtfI/rz0900ZRi4rOHNBSVZFsf1EfS9JokXbMJWx4XcZiBWsAUm3HAz5K+xu9rIxzXEB
         lfjauuvfLQLHfaznVaI/0tbEsRCZfb+6NWVVxMu8t/ITzf99YNpR6IlRIClRlLRRsTbp
         HOwFVXYgMjSM3qOa8HYBNpjqs1lxJ7WYKfkArhuODYrx5Gr3S0VhJNbzYLK0fQc7pbhp
         0WpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=L0RrkHroqLUM8Q36/nVUPxYagFJNXGiPoHDeC0ZJFn8=;
        b=fc5NZ5v09cS8M+tRJs9C3SB5x1wtZ/o+d9pEmA8fflJgGA7cJ3PF9u6EzkD4cocABC
         mMAyh/3axCQJAtmdKA7zogXXlsM6CRu38uCUYiA15fQsDPTAjsqgo6/u9lKp4yuY5O0m
         KUXBmqD8kACTZPROLhaiYYZUdplXoD8VK1VWu2lNgQpZBRPHKq5qFfLkBNyfd+SGL/Ft
         S2Y66eyHht9QxGlKh38jJTk62m8Oaob+laMCz61stWktKyKZfMcrQXY+K3ATazXTtROV
         Vt/xzXAw/H/8G+PrPLiY8RaPr0oF2TUmjm4Faq9sCODJZhyTLSo4sNUSwq2kwHuyRQaK
         KxrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrealmeid@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=andrealmeid@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=L0RrkHroqLUM8Q36/nVUPxYagFJNXGiPoHDeC0ZJFn8=;
        b=CrvnhQaWIVlUYoOdTGRaakKUdBJq8/K7dkYddhelNtixiwMjk7bpH4NrtgqEqZTaF0
         t7iO9DksA+nDf0M4A3ovbagNs3lGVRyyT2QXG4mdsdLfWUO0Ad2/4KR3pzQPwD6+X/uG
         Gs10F+UJHGeVBxGg5D4GQGHR1asCThW5OEo74e17cXJ9ZigrpxGeo7vW1lPjmvbb+1pa
         CzYsMya4V5iWV3SQoGSykhlVr687P1qt3Z84duPZ4bftkAh4T3Le5DHXvfb7Cl24StcO
         o6e0x/LjWABvBb5j/vprkS8wEX3OrS2py7soMidWoYHI42mc9hhO9FwlVSMCbD/Gifrq
         nwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=L0RrkHroqLUM8Q36/nVUPxYagFJNXGiPoHDeC0ZJFn8=;
        b=NGHkcuryrkeJuxIHHEoZ2dDWo0XPv6VlJmha76n2h5ZCiecZ6k8vejidtPqEv+D19d
         QQB0Y137j3nSQfTSs5JkUoKgwzxGSJpYraIyxieRr8EMEZeKvRvm8Xt7iMouLc4/a5YD
         YDALonWd7cfDbm+LOZpWIHwRLiRdGelYg/wUItp5wIato0ERjBHyQlyu4amVzWX9n88a
         DcYDMmoLrLA+j/TtgIrPoaISCTUi4seK4wmfyzXFYSqXKeoQ5rHXBAR2mIlJy8R5hzJG
         HRImveT8FSGpaR0srOaPz24p832QzSJLzaY4kL6u7960Op4GoslSlCDiqbgKANmdkYh+
         Qebg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWfXXTvwgMp1UXbAGnlIDPAzKGn+EovDCC0T+D3npfj5CdlPEXW
	AGcm1Y4hbcAtKtNU1407+s4=
X-Google-Smtp-Source: APXvYqzD0mdaXFov31dyyf2+ywU8rLrQmWs5m6/3RjVR4Lf4iS92AcSn1JkSQ9XDRnkOlWNkiBbvig==
X-Received: by 2002:ac8:5048:: with SMTP id h8mr3692091qtm.328.1581446076253;
        Tue, 11 Feb 2020 10:34:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:1818:: with SMTP id q24ls353707qtj.0.gmail; Tue, 11 Feb
 2020 10:34:36 -0800 (PST)
X-Received: by 2002:ac8:9b:: with SMTP id c27mr3778105qtg.348.1581446076026;
        Tue, 11 Feb 2020 10:34:36 -0800 (PST)
Received: by 2002:a37:c407:0:0:0:0:0 with SMTP id d7msqki;
        Thu, 6 Feb 2020 11:11:30 -0800 (PST)
X-Received: by 2002:a05:600c:2318:: with SMTP id 24mr6275358wmo.48.1581016290116;
        Thu, 06 Feb 2020 11:11:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581016290; cv=none;
        d=google.com; s=arc-20160816;
        b=EzyYqSWAWOeHOYReee+U06wei9bdCP9Ta4r64Na5SIgy4MvXCJiVjqU+DKaV8GvGRM
         x7nkNwfGT944iYWIfIJ5+7xB+Rlv4ch3Os2c8YtsDABBnb7Ve6jOPRrvhDHNxrPjr+M7
         HHLlF2Q+ID/qtRzjPu+mUd/bYBY5vxLrLY5NPf15TA6WwAJgNDq3kH0KEc5nlvJdshLl
         Ynq7CT+99/FJoAckIF0ogbHgPc1Qpb12UP8+ceovPJxevyRF9unMp5jvnzQHFSKtDxGd
         25/VMRIfofyi3IHT3RDXY6zSTO+VPu3cIvU4VhRnuFryM2YK9DEHwqPjWZYcYm9pdfhP
         0jxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=KEyEtUAybGQ2oGa+j3AkY7QEjEZhF+0YTJ5+uYG824o=;
        b=M3J+NrhjQCttzJxJ9Tr1rN4U4p3AL76fF5rrS/Dv2ukTkrQKuuS05kir8C73twBFcn
         gS4MDkby5OqIuSPOMYyL1LgCytPrRpD8SmWrQwoYZqQstzYVDiEgiNIWw0izGJEzp4go
         wMto0cBono3PiAwlPPjsW28n+QX28F1Uo8cTw3xFMQeD2sO+T7P/l99yvjbJYfFfrunv
         iH4RuM08JrxoT6w8b+iU7XoVU9nVkJ3dmV3hmYWfe33mgMqEobpLnqv4rr+jD19eTw4i
         IN4vOPhu435qrM+9GepmDBKFaX7fisRX+CJkuzdg9HWx7Hx9LYOLRcscAsr8c6h9MWVD
         Ryhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrealmeid@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=andrealmeid@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id t83si343846wmb.4.2020.02.06.11.11.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 06 Feb 2020 11:11:30 -0800 (PST)
Received-SPF: pass (google.com: domain of andrealmeid@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: tonyk)
	with ESMTPSA id BC0AA295836
From: =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@collabora.com>
To: open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: krisman@collabora.com,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	kernel@collabora.com,
	Frank Mayhar <fmayhar@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	=?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@collabora.com>
Subject: [PATCH v2] iscsi: Add support for asynchronous iSCSI session destruction
Date: Thu,  6 Feb 2020 16:09:03 -0300
Message-Id: <20200206190903.104089-1-andrealmeid@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrealmeid@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrealmeid@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=andrealmeid@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
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
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Signed-off-by: Andr=C3=A9 Almeida <andrealmeid@collabora.com>
---
This patch depends on ("iscsi: Don't destroy session if there are
outstanding connections"), which can be found at Martin tree at
5.7/scsi-queue

Changes from v1:
 - Return a ENONMEM if creation of workqueue failed.
---
 drivers/scsi/scsi_transport_iscsi.c | 38 +++++++++++++++++++++++++++++
 include/scsi/iscsi_if.h             |  1 +
 include/scsi/scsi_transport_iscsi.h |  1 +
 3 files changed, 40 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transp=
ort_iscsi.c
index f3f0ecdb09a2..17a45716a0fe 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -95,6 +95,8 @@ static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
 static atomic_t iscsi_session_nr; /* sysfs session id for next new session=
 */
 static struct workqueue_struct *iscsi_eh_timer_workq;
=20
+static struct workqueue_struct *iscsi_destroy_workq;
+
 static DEFINE_IDA(iscsi_sess_ida);
 /*
  * list of registered transports and lock that must
@@ -1615,6 +1617,7 @@ static struct sock *nls;
 static DEFINE_MUTEX(rx_queue_mutex);
=20
 static LIST_HEAD(sesslist);
+static LIST_HEAD(sessdestroylist);
 static DEFINE_SPINLOCK(sesslock);
 static LIST_HEAD(connlist);
 static LIST_HEAD(connlist_err);
@@ -2035,6 +2038,14 @@ static void __iscsi_unbind_session(struct work_struc=
t *work)
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
=20
+static void __iscsi_destroy_session(struct work_struct *work)
+{
+	struct iscsi_cls_session *session =3D
+		container_of(work, struct iscsi_cls_session, destroy_work);
+
+	session->transport->destroy_session(session);
+}
+
 struct iscsi_cls_session *
 iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transport *trans=
port,
 		    int dd_size)
@@ -2057,6 +2068,7 @@ iscsi_alloc_session(struct Scsi_Host *shost, struct i=
scsi_transport *transport,
 	INIT_WORK(&session->block_work, __iscsi_block_session);
 	INIT_WORK(&session->unbind_work, __iscsi_unbind_session);
 	INIT_WORK(&session->scan_work, iscsi_scan_session);
+	INIT_WORK(&session->destroy_work, __iscsi_destroy_session);
 	spin_lock_init(&session->lock);
=20
 	/* this is released in the dev's release function */
@@ -3631,6 +3643,23 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsgh=
dr *nlh, uint32_t *group)
 		else
 			transport->destroy_session(session);
 		break;
+	case ISCSI_UEVENT_DESTROY_SESSION_ASYNC:
+		session =3D iscsi_session_lookup(ev->u.d_session.sid);
+		if (!session)
+			err =3D -EINVAL;
+		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+			err =3D -EBUSY;
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
 		session =3D iscsi_session_lookup(ev->u.d_session.sid);
 		if (session)
@@ -4676,8 +4705,16 @@ static __init int iscsi_transport_init(void)
 		goto release_nls;
 	}
=20
+	iscsi_destroy_workq =3D create_singlethread_workqueue("iscsi_destroy");
+	if (!iscsi_destroy_workq) {
+		err =3D -ENOMEM;
+		goto destroy_wq;
+	}
+
 	return 0;
=20
+destroy_wq:
+	destroy_workqueue(iscsi_eh_timer_workq);
 release_nls:
 	netlink_kernel_release(nls);
 unregister_flashnode_bus:
@@ -4699,6 +4736,7 @@ static __init int iscsi_transport_init(void)
=20
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
 	ISCSI_UEVENT_LOGOUT_FLASHNODE_SID	=3D UEVENT_BASE + 30,
 	ISCSI_UEVENT_SET_CHAP		=3D UEVENT_BASE + 31,
 	ISCSI_UEVENT_GET_HOST_STATS	=3D UEVENT_BASE + 32,
+	ISCSI_UEVENT_DESTROY_SESSION_ASYNC	=3D UEVENT_BASE + 33,
=20
 	/* up events */
 	ISCSI_KEVENT_RECV_PDU		=3D KEVENT_BASE + 1,
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transp=
ort_iscsi.h
index 2129dc9e2dec..fa8814245796 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -226,6 +226,7 @@ struct iscsi_cls_session {
 	struct work_struct unblock_work;
 	struct work_struct scan_work;
 	struct work_struct unbind_work;
+	struct work_struct destroy_work;
=20
 	/* recovery fields */
 	int recovery_tmo;
--=20
2.25.0

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/20200206190903.104089-1-andrealmeid%40collabora.com.
