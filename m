Return-Path: <open-iscsi+bncBDA4VMEL3QNRB47B6PYAKGQEK45XBBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A41B9139CAC
	for <lists+open-iscsi@lfdr.de>; Mon, 13 Jan 2020 23:36:35 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id f10sf5668885wro.14
        for <lists+open-iscsi@lfdr.de>; Mon, 13 Jan 2020 14:36:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578954995; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBX0pbysOKR1phXt/CtB+ao2lHUj86iq/ntReDueec2fHkL9W9Xz+zwe9YFW8Pg6hN
         yQAF1ExYqC60+QQXECTrWmoUmhLZCDQNbO5WoBhipFuZra9MN99oIDFcQC+M7SQDBazW
         SMI/Q+B5AMG/PmW9HSgVpuy1MK/diRvduX4Z+vEpisEuL5CPTCwLobp54qaymSfo81gG
         PkUO6ePUZJg5IqQkm7wemKU6IM+iA5KxHyO8jgrSW2SuKXZLa7I5Sr9GSNz9GuVdoUp1
         C+n/BPD5uYaE3DKetgdnvjdjpJ8DwwkjHgaocrnO1mQmlQs3JgLZalXjd3YbFpc9xDbp
         kHRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:user-agent:references:organization:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=B8NB+8lnyRgMO1565ezC0cvTAUznCvkKYmMcxMqXm94=;
        b=amWA8neVOXd9SR0OGwC3ENI3A9s3+oAVMfS7cQs7ocUiW8RGVS40W69TMRzWM0CLmc
         XzuCqLeeUByoDjm5IeHTghh1nUVj2vDS2jh0tF+fxRGKmYrSF6m6+B5oZXp7L93NHrLe
         ojzyhIuW5gAHYA9YQXY1smwbgmv01wA9N0r3Y2EFq4RwQFhH98Z+EII0i/bteQqm/HSk
         AG/5SbnuSRLB1VMCW3mGHlaCwSlwhCoykZxn5RugG/25MZe+OjTxufmHtlbv6U1mKCIX
         CJntMvGtiWXGpQtO4zhilJBx6/BjrWFPVTbNCD8xLv9/0FbQdeuGIjR7Sns6tFSEMXsu
         ThFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references
         :user-agent:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=B8NB+8lnyRgMO1565ezC0cvTAUznCvkKYmMcxMqXm94=;
        b=na3Ryzwu0dVG9RfDkv1fw+vkqdfIwg0f8Xfb+dWWxsveGC+2Gj4IWwY6KajElYHvcn
         Byw5Pw+iZbVk2viCrvlCU4bLeMqorTeIvEBqyG23JOOAUaMxsydi8b7DyVYzeIsbCJG8
         VbYEzNKWd6cNekbJ5iB4k7BSOsNcQwRR0pHcVn5n8EYLRo/20ScDlkq3WHViHhWIrl7z
         dk5oN71ahrZRkX35RHf+ZB7ly2NY7n7LNDpf2/4bF7n9XzOpmrJLAvz/NUgUIexR2IpU
         KLifaOzhkz7MmgFNZ5Aypl5sMgJrqfBro89ayTG0jtxvuziBYfwf4K+Md3tHRE47vISb
         AyWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:user-agent:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B8NB+8lnyRgMO1565ezC0cvTAUznCvkKYmMcxMqXm94=;
        b=tcjreUA2Atp3XRskiBOzhyrTj/z9EkYYDeSe5K810wPk1L71VNzsgAAz6tl4EmOPFJ
         YPEQostuTjFkSw1iDASP8frNZ3094g+xyEJwrOIgco+wATJH10JK7S9OAL3e3XocxIG7
         EoZhhogFkjWKDFsTC0O9d7ZvvjVZYF06h2xOzBSsfODOt1UlyS734jQKJnSpD+6HzZBZ
         CuqUEDN3fDEG0f8TZ8qErIqIifWFin0JULSujDSGESk//5KRl0riv7UkBbvd0S3ORGHg
         UYuYiKcP8QgaxZYVJd+dH22WkK3KkGx6MsaOsMM5xcBslAqbUr4eaGp+wOOXuqXYZ6wY
         cY2w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWjJ8Az6dR1cGsAvYxggrl9ltViVSyB5O/gFIlek57NdxOf1flb
	x+8JRJ0rRovohIZCCdlGDXM=
X-Google-Smtp-Source: APXvYqyfrlaaaRLDVAvDZNg/KI0MXyNeV1j3HumCONbaa/Z6lkzs06OxXPFeGSLHzogulJFt3sCO+A==
X-Received: by 2002:a1c:541b:: with SMTP id i27mr23861566wmb.137.1578954995321;
        Mon, 13 Jan 2020 14:36:35 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a7b:c4d0:: with SMTP id g16ls6732285wmk.2.canary-gmail; Mon,
 13 Jan 2020 14:36:34 -0800 (PST)
X-Received: by 2002:a7b:cd0a:: with SMTP id f10mr23831944wmj.56.1578954994843;
        Mon, 13 Jan 2020 14:36:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578954994; cv=none;
        d=google.com; s=arc-20160816;
        b=iaOE0KzsH7kjXiKgUysC9wUZ7nIcJd9Q3kk9QWZp3ZVaFuhttPzva/1Y7as+wr0woB
         niYIaAwjeK76aT1dyia/+Iwl90A7RGd04BiQ8r2F0CkyPSg5dSqkgITallfVuaXWvRju
         MBzVYqv+qXQEkGIK9VSFG8Elzm/pTcMaWV6yY0dqUZTgGMod5Vt8OGaojqV+PApI61V/
         KtH4avpTKebgJzOYCPvBp+TLvTKd+UMbYY/TyKPTzR+NiwwfFmEtSdSS65lw4EbIP+f5
         8jPYSJ6paPKC+T/hjss5xmVbWNSHkcVPBB5VoQn9XEolFHtpzuIrX16rM3qj4lJHr3gy
         E43g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:user-agent:references:organization
         :in-reply-to:subject:cc:to:from;
        bh=F9u05j6xEpB/Wu0YEKRRKOLCoDVFOuZucNssRjtSrSs=;
        b=tmHhxr6SzuWY8nUNn4hvsTZ5bCT3ui/yAJixJG6RwXxjAgvyvdYptxhUvmxc7NbfeR
         EYCTx2iE0StVaHHYr0QGa5bv96YqZz5PMdByQU08E8h1/E5TU1CKHj1WboZKUv7NKlen
         rJmqWLNWbvUMVC4oDOTP+4Db58J3BOhsy4MctVmtuCMpxa9m/eoJ5/i9z/NOKGInydZ1
         sh3BgcozMQSzK83LIgSGXqeghrh3pKS5StTQloQdcuMotmDxuVIC0QRsxa6HHG2ptR9/
         f/qOf/r8CGgbdWgbPLaBdTmdI/ZbazLOPg8qs/kFCJ9oZgvEMeVeMIayi5aMKR2sEZWj
         4FXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id 80si66738wme.4.2020.01.13.14.36.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Jan 2020 14:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3F6852912D6;
	Mon, 13 Jan 2020 22:36:34 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com, 	martin.petersen@oracle.com, 	open-iscsi@googlegroups.com, 	linux-scsi@vger.kernel.org, 	kernel@collabora.com
Subject: Re: [PATCH RESEND] iscsi: Don't destroy session if there are outstanding connections
In-Reply-To: <20191226203148.2172200-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Thu, 26 Dec 2019 15:31:48 -0500")
Organization: Collabora
References: <20191226203148.2172200-1-krisman@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Mon, 13 Jan 2020 17:36:31 -0500
Message-ID: <85ftgjt24w.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
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

Gabriel Krisman Bertazi <krisman@collabora.com> writes:

> From: Nick Black <nlb@google.com>
>
> Hi,
>
> I thought this was already committed for some reason, until it bit me
> again today.  Any opposition to this one?

Hi,

Pinging this patch.  Any oposion?

>>8
>
> A faulty userspace that calls destroy_session() before destroying the
> connections can trigger the failure.  This patch prevents the
> issue by refusing to destroy the session if there are outstanding
> connections.
>
> ------------[ cut here ]------------
> kernel BUG at mm/slub.c:306!
> invalid opcode: 0000 [#1] SMP PTI
> CPU: 1 PID: 1224 Comm: iscsid Not tainted 5.4.0-rc2.iscsi+ #7
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> RIP: 0010:__slab_free+0x181/0x350
> [...]
> [ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246
> [ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: ffff934efa5ad800
> [ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: ffff934efd402c40
> [ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: ffffffffbb5dfa26
> [ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: ffffeb4041e96b00
> [ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 0000000000000000
> [ 1209.691213] FS:  00007f7945dfb540(0000) GS:ffff934efda80000(0000) knlGS:0000000000000000
> [ 1209.692316] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 00000000000006e0
> [ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [ 1209.695631] Call Trace:
> [ 1209.695957]  ? __wake_up_common_lock+0x8a/0xc0
> [ 1209.696712]  iscsi_pool_free+0x26/0x40
> [ 1209.697263]  iscsi_session_teardown+0x2f/0xf0
> [ 1209.698117]  iscsi_sw_tcp_session_destroy+0x45/0x60
> [ 1209.698831]  iscsi_if_rx+0xd88/0x14e0
> [ 1209.699370]  netlink_unicast+0x16f/0x200
> [ 1209.699932]  netlink_sendmsg+0x21a/0x3e0
> [ 1209.700446]  sock_sendmsg+0x4f/0x60
> [ 1209.700902]  ___sys_sendmsg+0x2ae/0x320
> [ 1209.701451]  ? cp_new_stat+0x150/0x180
> [ 1209.701922]  __sys_sendmsg+0x59/0xa0
> [ 1209.702357]  do_syscall_64+0x52/0x160
> [ 1209.702812]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [ 1209.703419] RIP: 0033:0x7f7946433914
> [...]
> [ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> [ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 00007f7946433914
> [ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 0000000000000005
> [ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 00007fffb99f1f07
> [ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000038
> [ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 0000000000000000
>  Modules linked in:
>  ---[ end trace a2d933ede7f730d8 ]---
>
> Co-developed-by: Salman Qazi <sqazi@google.com>
> Signed-off-by: Salman Qazi <sqazi@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/iscsi_tcp.c            |  4 ++++
>  drivers/scsi/scsi_transport_iscsi.c | 26 +++++++++++++++++++++++---
>  2 files changed, 27 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 0bc63a7ab41c..b5dd1caae5e9 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -887,6 +887,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
>  static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
>  {
>  	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
> +	struct iscsi_session *session = cls_session->dd_data;
> +
> +	if (WARN_ON_ONCE(session->leadconn))
> +		return;
>  
>  	iscsi_tcp_r2tpool_free(cls_session->dd_data);
>  	iscsi_session_teardown(cls_session);
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index ed8d9709b9b9..271afea654e2 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2947,6 +2947,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
>  	return err;
>  }
>  
> +static int iscsi_session_has_conns(int sid)
> +{
> +	struct iscsi_cls_conn *conn;
> +	unsigned long flags;
> +	int found = 0;
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	list_for_each_entry(conn, &connlist, conn_list) {
> +		if (iscsi_conn_get_sid(conn) == sid) {
> +			found = 1;
> +			break;
> +		}
> +	}
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> +	return found;
> +}
> +
>  static int
>  iscsi_set_iface_params(struct iscsi_transport *transport,
>  		       struct iscsi_uevent *ev, uint32_t len)
> @@ -3524,10 +3542,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>  		break;
>  	case ISCSI_UEVENT_DESTROY_SESSION:
>  		session = iscsi_session_lookup(ev->u.d_session.sid);
> -		if (session)
> -			transport->destroy_session(session);
> -		else
> +		if (!session)
>  			err = -EINVAL;
> +		else if (iscsi_session_has_conns(ev->u.d_session.sid))
> +			err = -EBUSY;
> +		else
> +			transport->destroy_session(session);
>  		break;
>  	case ISCSI_UEVENT_UNBIND_SESSION:
>  		session = iscsi_session_lookup(ev->u.d_session.sid);
> -- 
> 2.24.1

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85ftgjt24w.fsf%40collabora.com.
