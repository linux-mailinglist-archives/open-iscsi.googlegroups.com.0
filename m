Return-Path: <open-iscsi+bncBDA4VMEL3QNRBONRSTYAKGQER4TUF6I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E63CC12AE7C
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Dec 2019 21:31:53 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id k18sf11819325wrw.9
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Dec 2019 12:31:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577392313; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZSOo2NIOh9vj9Ckulef1DIgakkaizOTO68Y2o4XagMjawqau6SbCBAhODDwt1fWDG
         2vn5+YRgZOuhfu6dbccIDmwD/1Aq6aJqH1ZbZYO6Efnwr3k646LnHsjsOmHyBj8AyWx+
         2bRsL/AXkojQI70rcvPDlMmOUFOo+nh8S6fkYfzwP1EpL5wDvqMZLzeBAr8zeG9/LTQn
         3/NhT6+KUGv4wBuYsQtjCkWy0dVAxlYXNqIIcJKcxM5J2pxfboakZ3+EnhzZcDLeryg5
         UPeF6Rhm9G5qPhER53CoBNYmLZBvI9wdCpT8CJL7pisIJvPRWdv/nL+RbgpBHfDi+WIC
         WCUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=0QmBYH3RkeQkjuntllyn3oqixfD/J8vmeMyOoWgTINA=;
        b=DmNkqU8rESrNjQbo3NgjWb0OEQn9KmxoaTMmgETZgJ6iL3pxJpzZ0zFMlqMKCPZwnQ
         ECEGYdBoi+t7Kl6OBlDjJihQt0haWdptE0RkQifKKOhbxmF0XnD6G9FVMJAHO+GR2FT9
         ePrWsPBErOXVhunBLOUhpMoIWwZ+T18Gpar/RZqNM3pEHDXP1KJWyWZtH5GDqI8zXhdI
         nTTdpP+2Y7jnZ/xsGXWSRtpL6LKdncjduJLLJhGXP+15Ax2spII71mBzxL/OXDpLRbak
         T8qTj5Xr1oQjd5wzjdNF1O2FwdV6zvdcacnv1UsxHKk5Ov8ys3qv+CVJgJKELVanKRIH
         wYlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QmBYH3RkeQkjuntllyn3oqixfD/J8vmeMyOoWgTINA=;
        b=pdOgjNn7ZWOGhvM4PCgRc34v1cOp9BleboYdI2KteVQBk6a6ewsRZoZtbeI0+aACEi
         kMlx1AC9JSYkGgtfSWniInGJaPZQTgZczccJq7MQEjib45j1k3a22d/hUkFDTj3AqYga
         dv599VR01iJABoYdf/wA16wXGA814NsIhoL4Z2iLzqUnxL9OFvZTRTz+8MNAztIsAeRI
         z15GImZdLbymmTD75hoB+3I+0HAmj5F9qFjH+mVpa/Bgs67ZfWPUEaMqhrOJJ/0pxafA
         orQOxH+ESuqbbSg7IfN0Vob8P1IaO9yldgktOcIAZbQkbx8n4SEShxjbmmov2skHFXpH
         S50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QmBYH3RkeQkjuntllyn3oqixfD/J8vmeMyOoWgTINA=;
        b=SGW66qfDrQj1cIwlZKb01FPL2tsyvRbtA9l2Wxxr0Ep8YLDH5UUYNOHbKucpdIZm6I
         njoKbjrGRx0yf+Zogo89JD2T/rkGLfWLGpeNokV2W5CceFbupHDoP6DvBoKChvzM8gaD
         2M8t0ojK74/klYZKNyQJRMVblHPahzIsoiUVsCm6DPLDZrXa60F1EaE4VrT4idxkJNdl
         8VOxPusH4NjyruOA22uoqnaA0eZmaWL53Yu4DCQR22H/PfcQzJMYn2l3+h04ynssh7u3
         IUe5u0gHkZuIWBBesWLsAKhirUk4YvBxPRo6TP9bYzgTeGeJ1nMokWsV7MANRGiTPILA
         yfqQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVMcQHkGOH5Bnr9ntq0qsQUduNPaeahfJ33OaJWyg7yCOtOHL7X
	yWoFaylTImhN7AQqeVy+sew=
X-Google-Smtp-Source: APXvYqwaIDzAvls4NJjT33dTcW9o04G4ospvQ5+/x6NxpfAfhXz/Khqm45g5H4zVeYYi3RVtuA6ZnQ==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr46730209wrq.176.1577392313549;
        Thu, 26 Dec 2019 12:31:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls2366285wmi.1.canary-gmail; Thu,
 26 Dec 2019 12:31:53 -0800 (PST)
X-Received: by 2002:a1c:18e:: with SMTP id 136mr16047229wmb.53.1577392313024;
        Thu, 26 Dec 2019 12:31:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577392313; cv=none;
        d=google.com; s=arc-20160816;
        b=D8G/yuzlYRdOKANBSxfWB4COy+1u9LHHVAzhOnJDIX5/XWrAV9Pepn81BvqCmgjYHY
         m9cgyGWzZiOXJDOhnFpt3DCjyiAfPX/9S2+Xm9wrzxvxKIHU5ugO4v+0o2jn+rUoLkS6
         f0SR8JuQtymDEyNj4u/inn2U6oOkMOqrMghwu/eb6klS//t9yIDBVyWTn1NMKLLFjkss
         oTz33qqD+g5OhuYjchd6lt/OtcLDQ4pL/5val/1r0dbZ8Du93jxW9mT8mIxca1CgZh60
         8XPotXazanA5Rr0EXfCRlh3CtJ3E0ggHWPQZ3DEvgQ233BNnNjKBKZtk+x/M/hqIRLeM
         ryPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=v4+/b25O6UtnpTpm63i0nH/FYcYlxQj2rLou4bpq19o=;
        b=W8gO5izjqz84T3TO50mNrJ0jtu82G0jK4ueUI4bqz2h1Kf1Vim0Q0mHXSylS7SLSq8
         he84fkaqG/iyWhgi39EgjkhDEca1rsGMhKru5gr/8uGcdZ0G8KJCs8MEj26brwWcLHbQ
         Gtae0oWPyl7xIxqnyNikmF5RVXmeabd2w+QIYAWwT8ipGam0xSvtb3bIwFA3m4nZ+IN9
         1CSU+SB9TIbhBYhDZJQuwDgwJEne2801CzgRP6JifQYnNr5bVANxN8NG/SrlnAAcUSDT
         kI1sB6l6bIRNidm43B7FLV2OMawjD2JpkTo7AHDI4MdrQx/33bxmKF1bBVu8c9943f4U
         CszQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id x5si572745wmk.1.2019.12.26.12.31.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Dec 2019 12:31:52 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 6BF1A27FDC0
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH RESEND] iscsi: Don't destroy session if there are outstanding connections
Date: Thu, 26 Dec 2019 15:31:48 -0500
Message-Id: <20191226203148.2172200-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.1
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

From: Nick Black <nlb@google.com>

Hi,

I thought this was already committed for some reason, until it bit me
again today.  Any opposition to this one?

>8

A faulty userspace that calls destroy_session() before destroying the
connections can trigger the failure.  This patch prevents the
issue by refusing to destroy the session if there are outstanding
connections.

------------[ cut here ]------------
kernel BUG at mm/slub.c:306!
invalid opcode: 0000 [#1] SMP PTI
CPU: 1 PID: 1224 Comm: iscsid Not tainted 5.4.0-rc2.iscsi+ #7
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
RIP: 0010:__slab_free+0x181/0x350
[...]
[ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246
[ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: ffff934efa5ad800
[ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: ffff934efd402c40
[ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: ffffffffbb5dfa26
[ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: ffffeb4041e96b00
[ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 0000000000000000
[ 1209.691213] FS:  00007f7945dfb540(0000) GS:ffff934efda80000(0000) knlGS:0000000000000000
[ 1209.692316] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 00000000000006e0
[ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 1209.695631] Call Trace:
[ 1209.695957]  ? __wake_up_common_lock+0x8a/0xc0
[ 1209.696712]  iscsi_pool_free+0x26/0x40
[ 1209.697263]  iscsi_session_teardown+0x2f/0xf0
[ 1209.698117]  iscsi_sw_tcp_session_destroy+0x45/0x60
[ 1209.698831]  iscsi_if_rx+0xd88/0x14e0
[ 1209.699370]  netlink_unicast+0x16f/0x200
[ 1209.699932]  netlink_sendmsg+0x21a/0x3e0
[ 1209.700446]  sock_sendmsg+0x4f/0x60
[ 1209.700902]  ___sys_sendmsg+0x2ae/0x320
[ 1209.701451]  ? cp_new_stat+0x150/0x180
[ 1209.701922]  __sys_sendmsg+0x59/0xa0
[ 1209.702357]  do_syscall_64+0x52/0x160
[ 1209.702812]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[ 1209.703419] RIP: 0033:0x7f7946433914
[...]
[ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
[ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 00007f7946433914
[ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 0000000000000005
[ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 00007fffb99f1f07
[ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000038
[ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 0000000000000000
 Modules linked in:
 ---[ end trace a2d933ede7f730d8 ]---

Co-developed-by: Salman Qazi <sqazi@google.com>
Signed-off-by: Salman Qazi <sqazi@google.com>
Co-developed-by: Junho Ryu <jayr@google.com>
Signed-off-by: Junho Ryu <jayr@google.com>
Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Nick Black <nlb@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/iscsi_tcp.c            |  4 ++++
 drivers/scsi/scsi_transport_iscsi.c | 26 +++++++++++++++++++++++---
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 0bc63a7ab41c..b5dd1caae5e9 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -887,6 +887,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
+	struct iscsi_session *session = cls_session->dd_data;
+
+	if (WARN_ON_ONCE(session->leadconn))
+		return;
 
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
 	iscsi_session_teardown(cls_session);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ed8d9709b9b9..271afea654e2 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2947,6 +2947,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 	return err;
 }
 
+static int iscsi_session_has_conns(int sid)
+{
+	struct iscsi_cls_conn *conn;
+	unsigned long flags;
+	int found = 0;
+
+	spin_lock_irqsave(&connlock, flags);
+	list_for_each_entry(conn, &connlist, conn_list) {
+		if (iscsi_conn_get_sid(conn) == sid) {
+			found = 1;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&connlock, flags);
+
+	return found;
+}
+
 static int
 iscsi_set_iface_params(struct iscsi_transport *transport,
 		       struct iscsi_uevent *ev, uint32_t len)
@@ -3524,10 +3542,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		break;
 	case ISCSI_UEVENT_DESTROY_SESSION:
 		session = iscsi_session_lookup(ev->u.d_session.sid);
-		if (session)
-			transport->destroy_session(session);
-		else
+		if (!session)
 			err = -EINVAL;
+		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+			err = -EBUSY;
+		else
+			transport->destroy_session(session);
 		break;
 	case ISCSI_UEVENT_UNBIND_SESSION:
 		session = iscsi_session_lookup(ev->u.d_session.sid);
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191226203148.2172200-1-krisman%40collabora.com.
