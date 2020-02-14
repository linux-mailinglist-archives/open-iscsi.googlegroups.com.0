Return-Path: <open-iscsi+bncBDTZTRGMXIFBBBUTTPZAKGQECLCW4AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B29CF15E262
	for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 17:23:35 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id d16sf5384339otf.5
        for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 08:23:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697414; cv=pass;
        d=google.com; s=arc-20160816;
        b=bIXA6ASekOCKAcj8EqRJtCyhPCqb1Z3o2jdjg/J/69FGIN2h95lwdAbypxX0pcsNUp
         FwwNxuTF+Spf6wcHLdNRnL6/F53f5axkUeKUozNi14zU0JOJw6JNbM1hD21fE9K5z7wA
         877LjLWIYqDvNRL5DDMkaJ/SELCSzpVX0iFJlxe+2xwXY/tQaMUSAuRn5u9Rs8p1dFtq
         ak+q34d21mh8ym0Wo16Iyxffo5JfXJUA7tYLwdiH34fNpmruHYBP0HoFEdpAwOlVfy6C
         Gb2sPS7vwzyp4K1QIYlCjxJf66YjuZMhVdztcYTBoXwfZWOs07fokHS8H4Boz4xQoBIA
         Hy8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=91wvJXp3n5bqOk8dS9pYSr9nBU7xYUFvPkH84Eez6lU=;
        b=v+8SHNsAWKotxn2IjYBkjRooYRKnEA+LRmbtXBvMPJ369H08NZGFR9smbxbocunzaG
         YuQ+J4jCqcWuS+jlJLSi3zONfsg453bfqj2Zhbcf88sSACN0afWLa9G7Y0pQpcAE4z/H
         xxaiDmWAZtndG69dDvD/F5h6mqx/nAf89J7otNTOBzXT8JIHaLzZjjQt+3ImvAW3/ixz
         ZrwnCgw0LxAqGkUbL8RfZzuZdWfjPbElwi7j5UvM2N/pUTEQ430FM3KNgUShe7vpKh97
         ITQXdZXzGRSeE/oUJydzc2RPUn4fO13X7GbtrQPdrE5StEXAHz6B/BXlqK1rRY1cSxll
         UUcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zfsSum5Q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=91wvJXp3n5bqOk8dS9pYSr9nBU7xYUFvPkH84Eez6lU=;
        b=eNaKVjz+xjcl/bwNrHHX6ccRbxUA7PLzol763L7ImjuZBCh1VkRmVqKAzsQ34S/CN2
         zafBEHEGuHeSg33AYZvmGftsdEk+Jh6Fgxo8QRsx6brTtwpF1IZ95tQZXSB3JIpl/KgV
         8TL+cVQVMh5hFZecIhzLp4aoJP0X3Bjpf1CRnFp0g4qCUdYPiX+nTnECzzCF+lp7aDKd
         AYOgrZ5AiL0dQ2jOARZBKD11unfvP6DnjcVq786z6D+fnMXUV3oU27I8xHNVstifDzQ/
         a/TOKJbKIpImYIPL2RgrSTxgRZhwFALDDR6h49ue+93X8IpJRa2MekIvTBAeIpDQtvXu
         PKjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=91wvJXp3n5bqOk8dS9pYSr9nBU7xYUFvPkH84Eez6lU=;
        b=PSKcRBMAzOgpcYNPaetKkuf/LzQjPSow/Ojnq4mWXqlZBYjATRAG/gINKAGF/gd6Dc
         LLQ2Y4F2S/aKX3TrG57oBcu7WAmkA1/jOcYJIy+M0XlQQ4zZFZECTrjHtxCRwdq5j6RI
         vWTFn1BqC+PqLAUeP+H3Kmp9/obc1k124eUqfAf25nHgaECy71ck6RB+4NVUtbTq4p9A
         VkLynw60Ucy5stS/FDPtA+VSa3dmvKFXPfthuuCO3gyaU0R/kk8vEIklfmdNM8JQGPoR
         8ajBNfHz9VN8ejbGQioRwexseIiNr4C6geTyXr6sdVDcPjI9s5+Bo6vDQF4AOLF3QyHR
         xvlA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXAT5PpmBV093Iw1DBrOchU7jgEAyjTOhADXbM8d1eMtP+1fm6C
	orI0V5Q6TG+r0LiAcgCmXZs=
X-Google-Smtp-Source: APXvYqweU0QYnO6VjGJIXPjsOUaWX99zwkQKwr1NS0p0cOUCmBFrVm2QTyh1NCHVhhAwvbUZysMCuw==
X-Received: by 2002:a9d:6e05:: with SMTP id e5mr3002829otr.46.1581697414629;
        Fri, 14 Feb 2020 08:23:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:d615:: with SMTP id n21ls666046oig.5.gmail; Fri, 14 Feb
 2020 08:23:34 -0800 (PST)
X-Received: by 2002:aca:5d57:: with SMTP id r84mr2448592oib.42.1581697413060;
        Fri, 14 Feb 2020 08:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697413; cv=none;
        d=google.com; s=arc-20160816;
        b=GmoOJHvVHQQfTYgXLEIHQWrDmPv+0F0u19ANUMHsB9XQvrOBTxuaeTX8KU5IuvuiET
         vttQTI5jEQQaKDFSVbRO1e5B/yi/iQKgrfMAPJSAWGzgrfx05EF606UBz+E1/DkMlZCD
         e7HTc8bCWQbFhIGGOTyRzpcsE00S6N5JldLwnDDB5on2Xmumb8WpJD6GOcUq3FTBPBNs
         hZKjlWeFEuaVkCWIj2qIpuStTJdxtq/0fQypepQzdEpyXToYA9f044/BjsOCUEm8elnV
         S2mD0IP3SaLKb5tbKSgSQz4yHFUL6KBIqcoEiaWdqItWLmj80k7AvQq3623YEhFHedV5
         iGlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qm6c5PYplvPbyxfDcJd52+OOH9XoueoQjLeeKiH698k=;
        b=QPDFlSVaJ+lGm6+SRDu0L3UrdwCcniyYDvXXB0NyTsJyf2DhZqFch1TbLGoR3532TK
         mFEW1d6Nb+yG72xOEZjPmpPGnvtuOYEVWf3PkqIGOYdFcUB3pAR7yMxzcIjZ1Hg06kGT
         pMvzpuj5sONnZk3iEM5O2X4hj0I2PqaVUXlXWGUEqF71iqUwXFmDUHWa2Yahd1uxrnJa
         E1IyOXSUlbHhubStxlxtCLU+2PlGiXtFCpGozRjBAhjHMvrZ4wgPJfBgJjUyBXNFJFy3
         fOAN3RkR8FBEi85UjwBchBLIt3Qrch6tDy6Ba8t++ac4iiqRKnvBtWV1Hvp/t6qvp3a/
         Z/3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zfsSum5Q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b2si328970oib.5.2020.02.14.08.23.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:23:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 04DB824779;
	Fri, 14 Feb 2020 16:23:30 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 103/141] scsi: iscsi: Don't destroy session if there are outstanding connections
Date: Fri, 14 Feb 2020 11:20:43 -0500
Message-Id: <20200214162122.19794-103-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zfsSum5Q;       spf=pass
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
index d60564397be54..60c3e2bf87619 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -882,6 +882,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
index ab7bc4e634251..fff9c4d0f7c80 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2964,6 +2964,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
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
@@ -3538,10 +3556,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200214162122.19794-103-sashal%40kernel.org.
