Return-Path: <open-iscsi+bncBDTZTRGMXIFBBOERTPZAKGQEG4VRDBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6DA15E1A9
	for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 17:20:09 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id c127sf3470167vkh.18
        for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 08:20:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697208; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GVSDakgIv2WkuDB+tUOyv7V0cpwMryeXqD5/9iLZPxRbVwwRVlGS0sh91kPMjpCKu
         ir9cESQLXFngJrHdLmdpGlzrcf9A5GuS6S8Z0dfDF+R6HXBz3DwjROhyL+Ju6Twu9z4/
         ON4NzJopjlaLLMNe2qyerHVZTLEk3RJXIuUyDqOiGkBsVTmAs0IdtXo3s1mvtJrdFPzg
         DbgYIrHVsmZWOm9QRcAP7onee8zl93UByPcjmHvqpi47E959aWqXu3oQO7MNcNqWjHkH
         1ov3DPvt8ajDfStmkz2srAkbyFRZyYnoW1/WIrhEMBBHeX1IMosiDcPPt5yR+NyZA2Gh
         IaQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MmIZQe3qzEQn+B8ukKScpnYivmxt8NZ5x93qMABw5+A=;
        b=zjbujupdQ69bygXddQBuPFxaWbA/CGIGqVDijm+XMIIIbyayZddm6UzXtlTuqi7VsE
         sVDHh5ghpewmBF2WI42+0WOXJ6EZ0GD+o8WDBgMhVO0PvSQAw2Q9wyjHBIXo4ktdMXDO
         kdFi1z7NK/5G5T4qNZMDWMm/OyBhWm7llJq8bfS/B7gc9CWkx4QYWva1Y4mwiwwpuyZW
         KvCJiCyylllh4VDuaOVQ+eRXYgWxuxj0fW9ve4X3Ubq6Tly0CTWmdXyAOCjQpAp/xnuL
         gOLiBIKuSW714zyLcOUFe3wtpE2jGcrp51vHk2oN4NGpWvtjfkuRmSB6z9XCvoWJhZn0
         9QNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rxo4Ox4y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MmIZQe3qzEQn+B8ukKScpnYivmxt8NZ5x93qMABw5+A=;
        b=lbpKV07D7Fm22mjdiTuWOKUfgBYrYNLf3LUufyftCgsWwToIsMWUR79PlsJJMU1N9r
         E0wxQ71rXtfRCyKu1817p7wxxyXGCLCISXhheAekYiWZw5lsHMGnSGhjeq6gdAJ7rmh4
         KvldCY//cIWh4HVBZjeLdqeJwt7tL6crQcHsaYR+iSF6Xy2/tT4tmaALgFOj70wG2ST9
         LvwnE+BxfXBT0xkgiS2XQ/COKEsUhj5AbUMboLmWlP2pNApJ/8BkCaKNmCU7L5MhVWFn
         ovfR/0QJr/Hx+QM/6FvTv6fEjNbamcMj5g82QijK/czBzMoV2iPTjJPvtp8YGl7IYpJ8
         vDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MmIZQe3qzEQn+B8ukKScpnYivmxt8NZ5x93qMABw5+A=;
        b=qmZScMMGU7Q3qsZmRtdxsQ07e1ro5UXaE9haK/UvEASVWWLMa+PLb9nwjDUTzX7ppW
         S4Pay3VF1WHpJZQR4sa+GopIPs8H2y1VquziKp4e5ZZWkWoOfMByJQroMCKLWDljjfdj
         fVJUbk2/t5PabPetDszlBWL1DrQNJcN8ZTuQFZA/sCdYhMtCTEqZzoWywGyR0RhydPPI
         hpCdy+PzJAhLawuaGf3fDhuyNKIFXponFob2RhU780+k4LtiR42/BB4mXIOokVkc4qXS
         swivOMquOeK1t+zZ5Wg7KwBk7oFWwfknjIUjTbrMQ3K7ylBxOAQBLWBoCU3yYHPECNvR
         3DVw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXL2Ls7W/GZ31EK5cZd0CBJbO8gwxazTtoJXmv5PaTQCIIjPAGH
	xZMcJwBitAivWGl0keNzuQk=
X-Google-Smtp-Source: APXvYqw0w2f+BwAdfOL/4YSd4791XzobKHK7tTC5m01nOzXmAM2Yse0X/eoU87PGgXZWzUssDnr5bw==
X-Received: by 2002:a67:8ec9:: with SMTP id q192mr2036227vsd.190.1581697208755;
        Fri, 14 Feb 2020 08:20:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls320856vsa.10.gmail; Fri, 14
 Feb 2020 08:20:08 -0800 (PST)
X-Received: by 2002:a67:cb98:: with SMTP id h24mr1753237vsl.151.1581697208266;
        Fri, 14 Feb 2020 08:20:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697208; cv=none;
        d=google.com; s=arc-20160816;
        b=JxO/n7VrS80lK+ohO4wtoabk1bq7NXwivOPuCAjGOw7QstBzPev1kyHfVXZwDuvwXB
         MMYkT8B7EVih4rsxgY8WI6I2ZMTFqY4xQndRyROvAmhwKSArbQRagEGVQy2dxUkIpmua
         KtxAZMfvr7CEjJ3SLShgN78/is5UA52YdEIy3IxzvQCApu/r2CpAmtZ68sIvvZZj2i4e
         RNiyARXwZIhUJj4BfAm5vrhF9Gmz6OqUjnUweZp0THigD43ze62Q1gvWK9KybCPKeFYV
         GnSJ4WLxtQMq4xdExl8dyFuIKa7MCauYJwjdME2yCDtnEzgjnmq0Ozfd7cJdOorZjwdT
         P2Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VWIdaxoEwz+IxcPXGPNLNzkOUfS1/nYbcC5ZChfoAYs=;
        b=bVFLbR8tGtw80T6vE0kpRHSsfeiAREGKAk/zv4xD+LQAFifuYjyskcKTgXg6LBu0FR
         UNHHeF0Tu6tRbpJlJjrOqyKWFAvDKV8eeytg86eCBG+ONb0vospCYFSoGew9FdTLkkE1
         JMaPsIKrUPMLxXkGqXwK6ig0zvPHoIxh+Cb8kTYsBqF6SnaO0EsNlTX+hANCTndNSYRB
         CoT1G/MyZnB13tfh/+tbzYhP5nEc8UJBweEM+BqpdZBkeFNb+QR91guBXhG1/b3zpx+x
         3RgcDArnLOpXf1cfIK5OitgSB2cM/XjFofPB9D06dViGlagvRFTmwQa/zZI/W6SZ40yr
         CJlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rxo4Ox4y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i27si240676uat.1.2020.02.14.08.20.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:20:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF2A124713;
	Fri, 14 Feb 2020 16:20:05 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 133/186] scsi: iscsi: Don't destroy session if there are outstanding connections
Date: Fri, 14 Feb 2020 11:16:22 -0500
Message-Id: <20200214161715.18113-133-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Rxo4Ox4y;       spf=pass
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
index 7e3a77d3c6f01..e3ca16043f9af 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -890,6 +890,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
index 95d71e301a534..aecb563a2b4e3 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200214161715.18113-133-sashal%40kernel.org.
