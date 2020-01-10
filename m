Return-Path: <open-iscsi+bncBC755V5RXMKBBBHB4PYAKGQE6I6JJPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id B04341378A2
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 22:45:41 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id z9sf2019436qvo.10
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 13:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aq0k04+XWN0RPw//2XzmoGfZ2rRcB6rsJmN8IU0J/V4=;
        b=Rtpf9rwsP+L/NNOV1qW277SeQUVDgDhiacFeVy5i5Jma6AERwxeGaqGaulLqrReJ9B
         rMqQsmaiMF8pvm8TciWMSE8cRuY+B5Tj42Z2Lx9L+5BEn4k6Oc4VGDnIZxMqxu88LWfI
         fWL+RAD+n8+r39MR77hoR5LKQsw+i+5NFy2dPgksaHS2+0TVmxA+B6h9kxBwLR/h2bff
         jhdrTZdqbIRfaPrO+iYk/iDw/DeQdGn6UnVQjFq30isiKAz2Q1oTgIibkR6gvR/w4DPK
         Bj0zSK3RZg8OmkBYW3gVF83o4JUsjKxNwAD1s2xx5pHiju/v+g37k4cHaNgConX8Vgw8
         w1tQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aq0k04+XWN0RPw//2XzmoGfZ2rRcB6rsJmN8IU0J/V4=;
        b=dKQhMcQk34awY9zcVBWhrvrikdTKQyTjnQPk6TGqsHj5zzwDc6P+O5Bvd3d5DbHcos
         3/kyx+w4FePSmkREmu+7mOh6nF5kpyLy2bOsjsBSq7eSuDDPFefw0+kuB72lfweGRp07
         XaTfh+zMpkRGkHXuDId+N2Nh6fz4Go7bMb6e2f3AY1IvHrhFqIHnTgxsYLQ2umhs2ZEf
         fLMxN60tg2+n2xzBJ0K7zAwokKNptwn/w2FEFpnQTdCHKQEN55TKvgMM5MXWrxdDUMjB
         ptxneJQ4xOy0bDi6bDxgSr2Pw6haBTvxD4xeG3mE7jJquQHILYcpIsKSH2939plsmY4h
         saCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aq0k04+XWN0RPw//2XzmoGfZ2rRcB6rsJmN8IU0J/V4=;
        b=COYSu1fao9CjlrIt31czf+AcnTbKxbwWEVs2griLWdEIM+dOqDjvg2KFjW6ahi0+h0
         Ga79VqENkN6B+5higStJeHVm4/YoVOXMUh4sfeGjm6pdcn/AABzkznEdvmqIAODVQb8o
         CZsMNaOxK4U7ZkmarAlg/gI8he3CgalHWWSvCcoW2rud+oDtKZlcMqe5hf7MSgTsCL9F
         uLQxUBKr8ogEPYDd2rmQEGn7A7ZG8P84jB35b2E1/7WNlSUDHf94+AgRa5inr3KIJSyY
         NIlhZCHXJlhz0NlIFsr3i6/9XvITbuPt12YxkXTyahuQcl1+1Ny9fYK9Dqcg5ttxfJm/
         iWgw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXXLSblWqud4mRj5o1rGM/thkCkgG67k9V5Wk3kfqevxttbpH/t
	psNl9PBxMQiQtv5FuAP2kJA=
X-Google-Smtp-Source: APXvYqzsB3xCkRNrRc65b7mFVw2oUTt4A4KPY84YN0IlwU7mYJ5b65HWNTgD56F5T1iDuSo5txMWIw==
X-Received: by 2002:a0c:ed2f:: with SMTP id u15mr4947335qvq.1.1578692740539;
        Fri, 10 Jan 2020 13:45:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls2606458qka.10.gmail; Fri, 10
 Jan 2020 13:45:40 -0800 (PST)
X-Received: by 2002:a37:4a8b:: with SMTP id x133mr4907357qka.181.1578692739983;
        Fri, 10 Jan 2020 13:45:39 -0800 (PST)
Date: Fri, 10 Jan 2020 13:45:38 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <021a366e-0ad5-4528-a6bc-072420d6b186@googlegroups.com>
In-Reply-To: <20191226203148.2172200-1-krisman@collabora.com>
References: <20191226203148.2172200-1-krisman@collabora.com>
Subject: Re: [PATCH RESEND] iscsi: Don't destroy session if there are
 outstanding connections
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_917_325657445.1578692738840"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_917_325657445.1578692738840
Content-Type: multipart/alternative; 
	boundary="----=_Part_918_22775850.1578692738841"

------=_Part_918_22775850.1578692738841
Content-Type: text/plain; charset="UTF-8"



On Thursday, December 26, 2019 at 12:31:55 PM UTC-8, Gabriel Krisman 
Bertazi wrote:
>
> From: Nick Black <nlb@google.com> 
>
> Hi, 
>
> I thought this was already committed for some reason, until it bit me 
> again today.  Any opposition to this one? 
>
> >8 
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
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 
> 04/01/2014 
> RIP: 0010:__slab_free+0x181/0x350 
> [...] 
> [ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246 
> [ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: 
> ffff934efa5ad800 
> [ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: 
> ffff934efd402c40 
> [ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: 
> ffffffffbb5dfa26 
> [ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: 
> ffffeb4041e96b00 
> [ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 
> 0000000000000000 
> [ 1209.691213] FS:  00007f7945dfb540(0000) GS:ffff934efda80000(0000) 
> knlGS:0000000000000000 
> [ 1209.692316] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 
> [ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 
> 00000000000006e0 
> [ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
> 0000000000000000 
> [ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
> 0000000000000400 
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
> [ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 
> 000000000000002e 
> [ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 
> 00007f7946433914 
> [ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 
> 0000000000000005 
> [ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 
> 00007fffb99f1f07 
> [ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 
> 0000000000000038 
> [ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 
> 0000000000000000 
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
> @@ -887,6 +887,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint 
> *ep, uint16_t cmds_max, 
>  static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session 
> *cls_session) 
>  { 
>          struct Scsi_Host *shost = iscsi_session_to_shost(cls_session); 
> +        struct iscsi_session *session = cls_session->dd_data; 
> + 
> +        if (WARN_ON_ONCE(session->leadconn)) 
> +                return; 
>   
>          iscsi_tcp_r2tpool_free(cls_session->dd_data); 
>          iscsi_session_teardown(cls_session); 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c 
> index ed8d9709b9b9..271afea654e2 100644 
> --- a/drivers/scsi/scsi_transport_iscsi.c 
> +++ b/drivers/scsi/scsi_transport_iscsi.c 
> @@ -2947,6 +2947,24 @@ iscsi_set_path(struct iscsi_transport *transport, 
> struct iscsi_uevent *ev) 
>          return err; 
>  } 
>   
> +static int iscsi_session_has_conns(int sid) 
> +{ 
> +        struct iscsi_cls_conn *conn; 
> +        unsigned long flags; 
> +        int found = 0; 
> + 
> +        spin_lock_irqsave(&connlock, flags); 
> +        list_for_each_entry(conn, &connlist, conn_list) { 
> +                if (iscsi_conn_get_sid(conn) == sid) { 
> +                        found = 1; 
> +                        break; 
> +                } 
> +        } 
> +        spin_unlock_irqrestore(&connlock, flags); 
> + 
> +        return found; 
> +} 
> + 
>  static int 
>  iscsi_set_iface_params(struct iscsi_transport *transport, 
>                         struct iscsi_uevent *ev, uint32_t len) 
> @@ -3524,10 +3542,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct 
> nlmsghdr *nlh, uint32_t *group) 
>                  break; 
>          case ISCSI_UEVENT_DESTROY_SESSION: 
>                  session = iscsi_session_lookup(ev->u.d_session.sid); 
> -                if (session) 
> -                        transport->destroy_session(session); 
> -                else 
> +                if (!session) 
>                          err = -EINVAL; 
> +                else if (iscsi_session_has_conns(ev->u.d_session.sid)) 
> +                        err = -EBUSY; 
> +                else 
> +                        transport->destroy_session(session); 
>                  break; 
>          case ISCSI_UEVENT_UNBIND_SESSION: 
>                  session = iscsi_session_lookup(ev->u.d_session.sid); 
> -- 
> 2.24.1 
>
>
Reviewed-by: Lee Duncan <lduncan@suse.com> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/021a366e-0ad5-4528-a6bc-072420d6b186%40googlegroups.com.

------=_Part_918_22775850.1578692738841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, December 26, 2019 at 12:31:55 PM UTC-=
8, Gabriel Krisman Bertazi wrote:<blockquote class=3D"gmail_quote" style=3D=
"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex=
;">From: Nick Black &lt;<a href=3D"mailto:nlb@google.com" target=3D"_blank"=
 rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:nlb@google.com&#39=
;;return true;" onclick=3D"this.href=3D&#39;mailto:nlb@google.com&#39;;retu=
rn true;">nlb@google.com</a>&gt;
<br>
<br>Hi,
<br>
<br>I thought this was already committed for some reason, until it bit me
<br>again today. =C2=A0Any opposition to this one?
<br>
<br>&gt;8
<br>
<br>A faulty userspace that calls destroy_session() before destroying the
<br>connections can trigger the failure. =C2=A0This patch prevents the
<br>issue by refusing to destroy the session if there are outstanding
<br>connections.
<br>
<br>------------[ cut here ]------------
<br>kernel BUG at mm/slub.c:306!
<br>invalid opcode: 0000 [#1] SMP PTI
<br>CPU: 1 PID: 1224 Comm: iscsid Not tainted 5.4.0-rc2.iscsi+ #7
<br>Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04=
/01/2014
<br>RIP: 0010:__slab_free+0x181/0x350
<br>[...]
<br>[ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246
<br>[ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: ffff934=
efa5ad800
<br>[ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: ffff934=
efd402c40
<br>[ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: fffffff=
fbb5dfa26
<br>[ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: ffffeb4=
041e96b00
<br>[ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 0000000=
000000000
<br>[ 1209.691213] FS: =C2=A000007f7945dfb540(0000) GS:ffff934efda80000(000=
0) knlGS:0000000000000000
<br>[ 1209.692316] CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
<br>[ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 0000000=
0000006e0
<br>[ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000=
000000000
<br>[ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000=
000000400
<br>[ 1209.695631] Call Trace:
<br>[ 1209.695957] =C2=A0? __wake_up_common_lock+0x8a/<wbr>0xc0
<br>[ 1209.696712] =C2=A0iscsi_pool_free+0x26/0x40
<br>[ 1209.697263] =C2=A0iscsi_session_teardown+0x2f/<wbr>0xf0
<br>[ 1209.698117] =C2=A0iscsi_sw_tcp_session_destroy+<wbr>0x45/0x60
<br>[ 1209.698831] =C2=A0iscsi_if_rx+0xd88/0x14e0
<br>[ 1209.699370] =C2=A0netlink_unicast+0x16f/0x200
<br>[ 1209.699932] =C2=A0netlink_sendmsg+0x21a/0x3e0
<br>[ 1209.700446] =C2=A0sock_sendmsg+0x4f/0x60
<br>[ 1209.700902] =C2=A0___sys_sendmsg+0x2ae/0x320
<br>[ 1209.701451] =C2=A0? cp_new_stat+0x150/0x180
<br>[ 1209.701922] =C2=A0__sys_sendmsg+0x59/0xa0
<br>[ 1209.702357] =C2=A0do_syscall_64+0x52/0x160
<br>[ 1209.702812] =C2=A0entry_SYSCALL_64_after_<wbr>hwframe+0x44/0xa9
<br>[ 1209.703419] RIP: 0033:0x7f7946433914
<br>[...]
<br>[ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 00=
0000000000002e
<br>[ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 00007f7=
946433914
<br>[ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 0000000=
000000005
<br>[ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 00007ff=
fb99f1f07
<br>[ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000=
000000038
<br>[ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 0000000=
000000000
<br>=C2=A0Modules linked in:
<br>=C2=A0---[ end trace a2d933ede7f730d8 ]---
<br>
<br>Co-developed-by: Salman Qazi &lt;<a href=3D"mailto:sqazi@google.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:sqa=
zi@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:sqazi@g=
oogle.com&#39;;return true;">sqazi@google.com</a>&gt;
<br>Signed-off-by: Salman Qazi &lt;<a href=3D"mailto:sqazi@google.com" targ=
et=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:sqazi=
@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:sqazi@goo=
gle.com&#39;;return true;">sqazi@google.com</a>&gt;
<br>Co-developed-by: Junho Ryu &lt;<a href=3D"mailto:jayr@google.com" targe=
t=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:jayr@g=
oogle.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:jayr@google=
.com&#39;;return true;">jayr@google.com</a>&gt;
<br>Signed-off-by: Junho Ryu &lt;<a href=3D"mailto:jayr@google.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:jayr@go=
ogle.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:jayr@google.=
com&#39;;return true;">jayr@google.com</a>&gt;
<br>Co-developed-by: Khazhismel Kumykov &lt;<a href=3D"mailto:khazhy@google=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ma=
ilto:khazhy@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailt=
o:khazhy@google.com&#39;;return true;">khazhy@google.com</a>&gt;
<br>Signed-off-by: Khazhismel Kumykov &lt;<a href=3D"mailto:khazhy@google.c=
om" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mail=
to:khazhy@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:=
khazhy@google.com&#39;;return true;">khazhy@google.com</a>&gt;
<br>Signed-off-by: Nick Black &lt;<a href=3D"mailto:nlb@google.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:nlb@goo=
gle.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:nlb@google.co=
m&#39;;return true;">nlb@google.com</a>&gt;
<br>Co-developed-by: Gabriel Krisman Bertazi &lt;<a href=3D"mailto:krisman@=
collabora.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;mailto:krisman@collabora.com&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;mailto:krisman@collabora.com&#39;;return true;">krisman@collabora.=
com</a>&gt;
<br>Signed-off-by: Gabriel Krisman Bertazi &lt;<a href=3D"mailto:krisman@co=
llabora.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;mailto:krisman@collabora.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;mailto:krisman@collabora.com&#39;;return true;">krisman@collabora.c=
om</a>&gt;
<br>---
<br>=C2=A0drivers/scsi/iscsi_tcp.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A04 ++++
<br>=C2=A0drivers/scsi/scsi_transport_<wbr>iscsi.c | 26 +++++++++++++++++++=
++++---
<br>=C2=A02 files changed, 27 insertions(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
<br>index 0bc63a7ab41c..b5dd1caae5e9 100644
<br>--- a/drivers/scsi/iscsi_tcp.c
<br>+++ b/drivers/scsi/iscsi_tcp.c
<br>@@ -887,6 +887,10 @@ iscsi_sw_tcp_session_create(<wbr>struct iscsi_endp=
oint *ep, uint16_t cmds_max,
<br>=C2=A0static void iscsi_sw_tcp_session_destroy(<wbr>struct iscsi_cls_se=
ssion *cls_session)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct Scsi_Host =
*shost =3D iscsi_session_to_shost(cls_<wbr>session);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iscsi_session *=
session =3D cls_session-&gt;dd_data;
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (WARN_ON_ONCE(sessi=
on-&gt;<wbr>leadconn))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iscsi_tcp_r2tpool=
_<wbr>free(cls_session-&gt;dd_data);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iscsi_session_<wb=
r>teardown(cls_session);
<br>diff --git a/drivers/scsi/scsi_transport_<wbr>iscsi.c b/drivers/scsi/sc=
si_transport_<wbr>iscsi.c
<br>index ed8d9709b9b9..271afea654e2 100644
<br>--- a/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>+++ b/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>@@ -2947,6 +2947,24 @@ iscsi_set_path(struct iscsi_transport *transport=
, struct iscsi_uevent *ev)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>=C2=A0}
<br>=C2=A0
<br>+static int iscsi_session_has_conns(int sid)
<br>+{
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iscsi_cls_conn =
*conn;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned long flags;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int found =3D 0;
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_irqsave(&amp=
;<wbr>connlock, flags);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_for_each_entry(<w=
br>conn, &amp;connlist, conn_list) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (iscsi_conn_get_sid(conn) =3D=3D sid) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
found =3D 1;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>break;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_<wbr>irqre=
store(&amp;connlock, flags);
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return found;
<br>+}
<br>+
<br>=C2=A0static int
<br>=C2=A0iscsi_set_iface_params(struct iscsi_transport *transport,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iscsi_uevent =
*ev, uint32_t len)
<br>@@ -3524,10 +3542,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct n=
lmsghdr *nlh, uint32_t *group)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ISCSI_UEVENT=
_DESTROY_SESSION:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0session =3D iscsi_session_lookup(ev-&gt;u.=
d_<wbr>session.sid);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (session)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>transport-&gt;destroy_session(<wbr>session);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!session)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0err =3D -EINVAL;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (iscsi_session_has_conns(ev-&gt;<wbr>u.d=
_session.sid))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
err =3D -EBUSY;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>transport-&gt;destroy_session(<wbr>session);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ISCSI_UEVENT=
_UNBIND_SESSION:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0session =3D iscsi_session_lookup(ev-&gt;u.=
d_<wbr>session.sid);
<br>--=20
<br>2.24.1
<br>
<br></blockquote><div><br></div><div>Reviewed-by: Lee Duncan &lt;lduncan@su=
se.com&gt; <br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/021a366e-0ad5-4528-a6bc-072420d6b186%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/021a366e-0ad5-4528-a6bc-072420d6b186%40googlegroups.com</a>.<b=
r />

------=_Part_918_22775850.1578692738841--

------=_Part_917_325657445.1578692738840--
