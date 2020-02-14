Return-Path: <open-iscsi+bncBDTZTRGMXIFBBUEGTPZAKGQE3FUXF4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D996D15DD02
	for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 16:57:05 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id m69sf7962377ybf.22
        for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 07:57:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695824; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziGPypxY5bhfQkDPhsbWTVvaIXP7kh2x1QZp3zv7Zl2oeMLQ/oaXiYog0SftZLQhP0
         mq2IOGrVOzgU8LZmhb8DicqkShdjNdMn14Z5meTVxSFbHD9yJMQWhK3TrMVohLKRNGEF
         Cu6hMGU35D5R9yedzUtRmKJ5nZLCRqC1h2gVh9fTKfqFWOGY6UO4O4x5Qza5nwWAaEu9
         pCDMoOnxxXBY5X+0+Yc/qMGZIoH6ndaLgeKed8P9EYGrQJ0OIKS/Z0lHFwJ3MAC1E+U8
         z6BXY4Gv7qDgNxUQj5u/CnmJlENeTEyn+Ds6I4yHF375XiQFJ8yXc9xrR3HdsLsPdA5Y
         P5jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=pv/xb3ZSZdxyfBd9wtYgJX1bSbR0+YInXJF/luYLyAA=;
        b=B6BbgJI88OuSWERx6zE1SCt+/FLA9IChVujUB0lkWK6yhXMlqrt1Kg7a7xMCpV86Ld
         UdmMc6+bQp+x9b8RNCQxquFBFmcMWMkPJp8ex0Q89xRqGEeQqugMcYYvj31DK32KMq/D
         IK1xMRLJU7gQEC70p02X8QdY90PBu1+ybopqLd3hK6La/0a6FnKVDVCFRxwW8nwCWI5V
         8BfR7VvyXQHRcKCo5BjAqNtMcYDqkjuo1DH6TfUhhIezkQwP/d7to7hi0iimIurRpGda
         WqpLpkW5TT4/KO5YMAxyH0kDU+/onimBHkFk8GnMniZNBfVEvT9RC8TKM6CRaaw3+21y
         4DyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ytBbiScY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pv/xb3ZSZdxyfBd9wtYgJX1bSbR0+YInXJF/luYLyAA=;
        b=qGIeATEPSDlmzNAwtclBILXFf89bLspcHwLSngE1icbDVoBm+dQ4nT4b9rwauwWXT1
         FZbBCrzDp7WrNEcCubTz43begp988QhXUqk42zUMyP/+4MneIj/TV1APdxRspl8L8FSk
         pgPNChE0/+CCR3Lr3bK3yjzmirQaztEvL6z39GwfkNX7ynaaNTU4ddDne3occqDSZMrY
         A7uTq+FgNaQlyY6Tu6JQSH+uaug39xx1It269RyyH0o6yU7sX4DFSjzTTNoX1GY1JKsX
         LZrARUDOwjI/ArTFLCQez2q1Ze/YMF7y/jst9yPSBfdJSP2Rwdn+35HZHERhoiSJudLy
         YZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pv/xb3ZSZdxyfBd9wtYgJX1bSbR0+YInXJF/luYLyAA=;
        b=oUjqA+wreLvwJtmr2HWxRgnVthfsIz+sOis2g9tebUhwl77ncfQblQtFq3Etg03iB2
         qCFWHMdzbGH9ANoNao1jYPUo/2JSILBKVKfyy4DjXPc3bADdTXpDJLDhhmLScqh9kiua
         +uJ/rtAA/BeCAW6zgeffRLXf3RHMfc8PhvHf6b8lHjSc0RDNcz8fb1BLWQUsmpJWe8O+
         /kKjVqFACRpZSidFvwSdQ4zsYU3uvWVVxC/wpeWmJIQR7Cb7pKTQ3MGCFtMjexd+TgSx
         ZGSO7zOa4JyD0RrKrTLOXHpJKdBQSDGt1lLKOK30vEMI+H1Qph02Y7iFZiZrl63IyErZ
         +fqA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW58eyC3kJmx6vpyi+bwkYByaeoKCwp8SFFFh4I6j1fP41b2kYl
	OGxiC1iDSwnTTWCya/LHxfE=
X-Google-Smtp-Source: APXvYqwrkDsspYjGMG+cTGYbH4Gd2+YbG16Nt9Jgpc0AespTKd6ZJYvoBf2sawOX2wFE+b9qPWQbsQ==
X-Received: by 2002:a81:a1c4:: with SMTP id y187mr2947740ywg.189.1581695824450;
        Fri, 14 Feb 2020 07:57:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:cb42:: with SMTP id b63ls514788ybg.6.gmail; Fri, 14 Feb
 2020 07:57:03 -0800 (PST)
X-Received: by 2002:a25:8601:: with SMTP id y1mr3436956ybk.193.1581695823899;
        Fri, 14 Feb 2020 07:57:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695823; cv=none;
        d=google.com; s=arc-20160816;
        b=TD07g3wonNMPlPQzbVjsuh5GOBQPb+HF8skBj9OVgr6FHFBAPaux6GyczRLN+IJ9oJ
         h74YEkY71NhZ06DPw+I+lTShLBN4zZeLyufGAuLS/GCVM2vVUgsvBH8QY3dPmeOau9cE
         Yvy8vqYpL0tkyWqoNSNiDoEFl7nqiabAO47FIWAtuECdyhcoMe+QjOrYh6WwJ8f9rD/l
         5J2VNyx3O988zBgj84n9Q/2BRmrpx6lep2ckV+P3JhPJQVw/Zx0h21uwd4PILBOpy6Hn
         PQqVlUjRnQr946MmQSKdC4vGNMYvlTPnQuTxE+ri39vPdueYHCFKTb3CzmYjC0IOmHHJ
         dymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yqXsoe/xKV7NNYKDySNgrqMEQWPS6Ey5wocpx5sNVgc=;
        b=pFGTU85k8dAWL4fttb2RTNas50xZ0bxQMjL7r75GQtSyRTbEYMLSWHEVqj9bUSsuj1
         LnQm//1P+eqbaD07c1dZHs6Se19/QLsd1QkkwkPIK5ocoZP8LXesDfIHrF9Vsw0RtuEQ
         kyFHsoHnKOYG2qq1UPv7mvm0owoF788tgLAK6d35cjwxm95xrmUHbK8ePV8q9tdKxww6
         wJQm8YV/WRtGad0UlIZP4oKD2AwN4TvCOoE/vXWPMR5vg1JhxXrF4jSSYUJO5AvuxYOe
         iIUlkV/4fsqd14/cTAYQb2Lm4b1jRdwE/120Yy4Nbm2YER29K1cSozTBPAIl5ihrJcQ+
         2u5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ytBbiScY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p187si351904ywe.1.2020.02.14.07.57.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:57:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA6C72467C;
	Fri, 14 Feb 2020 15:57:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Black <nlb@google.com>,
	Salman Qazi <sqazi@google.com>,
	Junho Ryu <jayr@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 377/542] scsi: iscsi: Don't destroy session if there are outstanding connections
Date: Fri, 14 Feb 2020 10:46:09 -0500
Message-Id: <20200214154854.6746-377-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ytBbiScY;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit 54155ed4199c7aa3fd20866648024ab63c96d579 ]

A faulty userspace that calls destroy_session() before destroying the
connections can trigger the failure.  This patch prevents the issue by
refusing to destroy the session if there are outstanding connections.

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

Link: https://lore.kernel.org/r/20191226203148.2172200-1-krisman@collabora.com
Signed-off-by: Nick Black <nlb@google.com>
Co-developed-by: Salman Qazi <sqazi@google.com>
Signed-off-by: Salman Qazi <sqazi@google.com>
Co-developed-by: Junho Ryu <jayr@google.com>
Signed-off-by: Junho Ryu <jayr@google.com>
Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c            |  4 ++++
 drivers/scsi/scsi_transport_iscsi.c | 26 +++++++++++++++++++++++---
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 0bc63a7ab41c8..b5dd1caae5e92 100644
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
index ed8d9709b9b96..271afea654e2b 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200214154854.6746-377-sashal%40kernel.org.
