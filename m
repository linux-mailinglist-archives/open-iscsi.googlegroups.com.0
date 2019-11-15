Return-Path: <open-iscsi+bncBAABBNEHY3XAKGQEDZGHHHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED72FFAF3
	for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 18:30:30 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id 6sf10702978qtu.7
        for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 09:30:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574011829; cv=pass;
        d=google.com; s=arc-20160816;
        b=batXEq+nGtDRY0KFyC4ZzCxH/bNfuuHVoafLlfRd/8vC80UnhC4WmmrhjBAbJWE7Gc
         4uwUwTJO4wzUr8M2rnArlgE3n3uvv2RGPCbV93pR6oxDYp7p19fOylZW8s79eCje4wCY
         2h06/qVXFvPZsQZiF3NUxDZQHH12JOiyLE6PE0eiDi09JMU+dR7c3GkCT+RINkPsvnRZ
         e+6NV58ASw2ei9mKGsJKC4dvLe1D7CzFsqnRDpHlJQ8HJlYAUFfUxrlOtWhS/hLHmREL
         MeDlEBEHd3qikVzVIZaM1qYXDeunGp7FBOacH256MLHz/0qSJO+jBpCGq222vhMVnTzM
         YdOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=jw44ukEXzuyLbU0hU6GPFKRtHs+DWfR87VOLYWz0D60=;
        b=pGtcm2gCherTn2EY2zf1wOOqnqMHduPV9MrNj5FzSTuaAn85wWWhYxQrnAnYJz9mxm
         rDMQGh87YcduGrM+raLBSEeg+FlbO+tHm0LzzJIOXrIvFPvOwNDNgGNuUiipU0V264WN
         FcX1zgARpEXcM3bdDYVLJxeCoCe77+CsNEPfjF8oCuzOl9h0KbgfL9z/69CDCxAb0yv4
         gUocksYQmAX/02UBUd7MaxyfBydLYh80N/z85R0APpz8kHp2hY2wmwfxCcotC7UHPt/E
         UAkncn4CGpITlHfQUlrxIddKpb00CJUO2Fe6gDFcdfaz2PouhE8dWpnd/fpRfbWeXnTc
         5MZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jw44ukEXzuyLbU0hU6GPFKRtHs+DWfR87VOLYWz0D60=;
        b=Zn/g0V8r6xnn30sYZI1/YdSErJ1b3KeNvSjYc4MpAU2CPJz6TpBTXinlgdpn6lQU39
         crJVjL3x+WBPjIebeiCB2fhD9gMuQw96xWvy2gK5ztEUBB7UDqTVVIttzhNfhj2lch9M
         7sSDPc2QPQo8hqtkwLZfI1yIazsi++v1kkIOKTVz6wTEfzGIhykGTPEo0SP2lRoCB/8P
         qJwOugG9s5+CgNoPhvVb6EvecCBT83OJUdIc60sgxWJ7cswQmrvpTYP8h7Iq/NgmduRl
         b9gS+EmgvHXF+Q74LrRK9Qf4jbNjjKp99RuM/xH0giIJItrENwJCXy9MnyrBlxaBCuDQ
         ghDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jw44ukEXzuyLbU0hU6GPFKRtHs+DWfR87VOLYWz0D60=;
        b=DLnG6CwZ/7FbtxDtYlKGbjW9izxk8hbWbz6tjv4ndAYXTBg5AAhwYxWN75BTThT2Wz
         xzuYFEy0HpaLtEtD5yPZAG3TdtN04zzdc5R7msy4bXwtFzuzesOz9Dep4Jqo4i4np8Cb
         gAaW1zpsZDd18sQVngNO8A1aOBJGNw/xloWCWcxcfbsaZoWMoN3f3IwjIPoFoUoYIn/j
         YbRsIC2I3tl96O8V4bl0nzB2sGYY+GLWb4EJNvVPM2yaDJXGde54yluRH1hOA1NpuALt
         /6RLQQCBLsXae9dyadeVhGGAPG7ZD76qcDaPOE3DT2BIKn9SygvCqey12SNvKZFPf/6v
         P0rg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVxqLhTWSf9XX/0IIQV/8FowVg6+pEd2taj59GY491YG8TPy10/
	kw3CiovrEhvCsn7PbDXrjNA=
X-Google-Smtp-Source: APXvYqwT+rHVGp61tdfJFd39st7cC7WSF9dInexy4Ln5Jw1YxLCJhrR/efrrDRljH7V6kPNI0/1Nxg==
X-Received: by 2002:a05:620a:896:: with SMTP id b22mr8041339qka.386.1574011828880;
        Sun, 17 Nov 2019 09:30:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:df82:: with SMTP id t124ls4038229qkf.2.gmail; Sun, 17
 Nov 2019 09:30:28 -0800 (PST)
X-Received: by 2002:a37:8b06:: with SMTP id n6mr17687156qkd.263.1574011828702;
        Sun, 17 Nov 2019 09:30:28 -0800 (PST)
Received: by 2002:ae9:ea07:0:0:0:0:0 with SMTP id f7msqkg;
        Thu, 14 Nov 2019 19:21:48 -0800 (PST)
X-Received: by 2002:a5d:530f:: with SMTP id e15mr5143232wrv.119.1573788107810;
        Thu, 14 Nov 2019 19:21:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573788107; cv=none;
        d=google.com; s=arc-20160816;
        b=c2dqXWTZf0IJXWv3/LiKV+TWZVQi5i5a+yjBVpI5/gEscZ2s5hB6Y3ZQlQl7/8WUkZ
         +J5Duzx3LaoQs+DvvF9Fsxko6u4kEaFsDK9yoBlfPQ1z+lMaEt1DsRP/TipF8FTIoqpa
         QxZ+k39ULYF8UhNXnO0yMTkAmLPNRqBBBC7VO6oHvkifh5sAon/h5Iwjtz0aCox7xwUf
         PZ+Vh7t+QrZIv7slOWOlnhvmcA7Bb0Fgt0KDfHJ/uSQvXWkcccvRhJTWPWaGsHvMnmg3
         E0btY/ujjmZfFApILd+Q8NiZCHuflvBh0ehNjkHZE00N3ERNO62IyMVNvNaRcaXra+DS
         y5CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=wQB3lMF/NyORbrfJGzpOLz7ivhY/iTe9lD3THq28edM=;
        b=VYEMWxuU/gsdO07D3cgqm3SUQHyAJMcJOqghyoivM9/Tv0bLh4tZbwJ0OOAwcRz8qH
         O7qZcfP5SVLSE8cRtLy6q0Tu3VDe+D9X0nSDzjtKCxopqZbPZSwmj0qPFrQQQW2HLght
         +AwQjDK1PbV3+Nhd0MrumI505t64sdiw21q3u5Jl2Yk+vTnM+4TEnXMkqHPsTbmAdmYx
         YeeEhAbcV7OZYbNqfa2jTB0b9pRPuqZw0EmJXE77R/DoRh8VVp1yZHWzYzAm9K2NxS3N
         BPG+J8aXXf4tAYNu+zzlHPwBXqlUQ9ZYFJ7CXBbp3vFN++aEzOW/ZJjMKBaKog7Slt98
         kGHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id q25si35443wmj.2.2019.11.14.19.21.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Nov 2019 19:21:47 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 143682914E2;
	Fri, 15 Nov 2019 03:21:46 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	Nick Black <nlb@google.com>,
	kernel@collabora.com,
	Salman Qazi <sqazi@google.com>,
	Junho Ryu <jayr@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH] iscsi: Don't destroy session if there are outstanding connections
Date: Thu, 14 Nov 2019 22:21:43 -0500
Message-Id: <20191115032143.2217-1-krisman@collabora.com>
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
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Nick Black <nlb@google.com>

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
index 7bedbe877704..cea7fda1dd23 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -879,6 +879,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
index 417b868d8735..39c185be23bf 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2945,6 +2945,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
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
@@ -3522,10 +3540,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
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
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191115032143.2217-1-krisman%40collabora.com.
