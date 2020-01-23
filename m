Return-Path: <open-iscsi+bncBC755V5RXMKBBTNNVDYQKGQEKTALSHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCF147376
	for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 22:57:34 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id l1sf2950298qvu.13
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 13:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3bVSxrefH7kWgt5Vu1ekabmWmpoFjj/oeNotXAkpCBs=;
        b=m9IVI/37c7vntwWrVe9U6upfHAdNRdBxTCYA/gMq2gEvD7JFI0Z49wc1JX/JCeRrSA
         tWaArDPZlTYMKZ71Ii6Kyjuw1p6RGPWHfm3Ttxoh/NGM/cQ9HruuGFLXn6NLN2lqmnIT
         +N+h7/eNu227B+MCCreuuLLHV7GkUa/W96WCYxjSgvnpdbGHqr11P/RZ4TwwTXxOBWoM
         EzwtVbtJ6mn8k1OSoI51JGgomHOEXb/sd/JtvxcD5yGoWdiG0Ds51Xvb/hWOyq4AP5vw
         jzF7JP6RoH26xcz+dBSY16RsqZOF2i4AIW81GYmTQFOBjnU42smq3yJTcJQz/aPwr8JH
         shnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3bVSxrefH7kWgt5Vu1ekabmWmpoFjj/oeNotXAkpCBs=;
        b=faqtUjUfEGp0bTfWqUoVeTQuIYPZAK0TtF+S60bqjr6wi5Copg38N6vuVAni5VoQ91
         ugDe115langUPd57OIExtTVF6fndg7IGnpnmQhgqXsGsPbnf33jvaynuWObrnSsdDYFz
         OmeRBFYolDCDP5i8X1IE7CHTszryOwFq19rb1XXY7FqMTGaxnAojqo4X7AgKihOUFsey
         Ovka7NyhNh+tMuEY1PYkMf6KD8BTaEeu/khDAiWLYNmiewaRP0t5VkCItjbHY+itSRoW
         I6qBeRFcWHVXVDCTdaC0KnRGwNdguUbwN8O+20CiowODhnNHJFY+r6Z0fXuRhDQVliQU
         OHnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3bVSxrefH7kWgt5Vu1ekabmWmpoFjj/oeNotXAkpCBs=;
        b=Xd8Vg5jOM5G+HIiGgGnjs1R6YTzij5R0Kz5BIpwtNKwLSYwbkGrbKri2lVQpt6Biio
         kGpu1jBDfJxhjtgkQF7FP7RLV2NnywcGqy5sM4QX88x9OyMjNw2Wa+ZuvYTEzT+pHDft
         /lFCSDT3wYCkeFC/Q4C8m08Gcicszo94BZKwBUQYznueTSoR2qWufrOvFL5hUiJMdZMK
         SK9T94oJsw4Xp5S6Uv2PAGXNbTQ5pQW73TzULtnq/cl3niXKYWV//AvQzYDsML/NA7Lm
         7mKqUIntuzx1fua4m4RPgG17AFX+2mdpzW/TPvVkxJB83lIHXBATcE3W43M3ZrjQPfCt
         0Grg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWf1hJOOYkj7J7Ey4FeFQE+yPBXaBTaa1MgmoV2fVAmSuA56dZf
	31mK5o9pJ6sFTrcGZs2Dlqw=
X-Google-Smtp-Source: APXvYqx8J7Q9smY2XJpGZzh8X3bSLTvuPoYmhEU0fzjarlXzQTxmO6Ma1nd6hRgvcRG7ojvswTAO4Q==
X-Received: by 2002:ae9:f30e:: with SMTP id p14mr402827qkg.186.1579816653405;
        Thu, 23 Jan 2020 13:57:33 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:480c:: with SMTP id g12ls3554714qtq.11.gmail; Thu, 23
 Jan 2020 13:57:33 -0800 (PST)
X-Received: by 2002:ac8:4b7c:: with SMTP id g28mr364684qts.180.1579816652822;
        Thu, 23 Jan 2020 13:57:32 -0800 (PST)
Date: Thu, 23 Jan 2020 13:57:32 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <fb865b89-22a5-4d82-bceb-4b4075e7eacf@googlegroups.com>
In-Reply-To: <20200117233328.1052604-1-krisman@collabora.com>
References: <20200117233328.1052604-1-krisman@collabora.com>
Subject: Re: [PATCH] iscsi: Add support for asynchronous iSCSI session
 destruction
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2935_1398068101.1579816652206"
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

------=_Part_2935_1398068101.1579816652206
Content-Type: multipart/alternative; 
	boundary="----=_Part_2936_1243338227.1579816652206"

------=_Part_2936_1243338227.1579816652206
Content-Type: text/plain; charset="UTF-8"

On Friday, January 17, 2020 at 3:33:35 PM UTC-8, Gabriel Krisman Bertazi 
wrote:
>
> From: Frank Mayhar <fmayhar@google.com> 
>
> iSCSI session destruction can be arbitrarily slow, since it might 
> require network operations and serialization inside the scsi layer. 
> This patch adds a new user event to trigger the destruction work 
> asynchronously, releasing the rx_queue_mutex as soon as the operation is 
> queued and before it is performed.  This change allow other operations 
> to run in other sessions in the meantime, removing one of the major 
> iSCSI bottlenecks for us. 
>
> To prevent the session from being used after the destruction request, we 
> remove it immediately from the sesslist. This simplifies the locking 
> required during the asynchronous removal. 
>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com> 
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com> 
> Signed-off-by: Frank Mayhar <fmayhar@google.com> 
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com> 
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com> 
> --- 
>
> This patch requires a patch that just went upstream to apply cleanly. 
> it is ("iscsi: Don't destroy session if there are outstanding 
> connections"), which was just merged by Martin into 5.6/scsi-queue. 
> Please make sure you have it in your tree, otherwise this one won't 
> apply. 
>
>  drivers/scsi/scsi_transport_iscsi.c | 36 +++++++++++++++++++++++++++++ 
>  include/scsi/iscsi_if.h             |  1 + 
>  include/scsi/scsi_transport_iscsi.h |  1 + 
>  3 files changed, 38 insertions(+) 
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c 
> index ba6cfaf71aef..e9a8e0317b0d 100644 
> --- a/drivers/scsi/scsi_transport_iscsi.c 
> +++ b/drivers/scsi/scsi_transport_iscsi.c 
> @@ -95,6 +95,8 @@ static DECLARE_WORK(stop_conn_work, stop_conn_work_fn); 
>  static atomic_t iscsi_session_nr; /* sysfs session id for next new 
> session */ 
>  static struct workqueue_struct *iscsi_eh_timer_workq; 
>   
> +static struct workqueue_struct *iscsi_destroy_workq; 
> + 
>  static DEFINE_IDA(iscsi_sess_ida); 
>  /* 
>   * list of registered transports and lock that must 
> @@ -1615,6 +1617,7 @@ static struct sock *nls; 
>  static DEFINE_MUTEX(rx_queue_mutex); 
>   
>  static LIST_HEAD(sesslist); 
> +static LIST_HEAD(sessdestroylist); 
>  static DEFINE_SPINLOCK(sesslock); 
>  static LIST_HEAD(connlist); 
>  static LIST_HEAD(connlist_err); 
> @@ -2035,6 +2038,14 @@ static void __iscsi_unbind_session(struct 
> work_struct *work) 
>          ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n"); 
>  } 
>   
> +static void __iscsi_destroy_session(struct work_struct *work) 
> +{ 
> +        struct iscsi_cls_session *session = 
> +                container_of(work, struct iscsi_cls_session, 
> destroy_work); 
> + 
> +        session->transport->destroy_session(session); 
> +} 
> + 
>  struct iscsi_cls_session * 
>  iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transport 
> *transport, 
>                      int dd_size) 
> @@ -2057,6 +2068,7 @@ iscsi_alloc_session(struct Scsi_Host *shost, struct 
> iscsi_transport *transport, 
>          INIT_WORK(&session->block_work, __iscsi_block_session); 
>          INIT_WORK(&session->unbind_work, __iscsi_unbind_session); 
>          INIT_WORK(&session->scan_work, iscsi_scan_session); 
> +        INIT_WORK(&session->destroy_work, __iscsi_destroy_session); 
>          spin_lock_init(&session->lock); 
>   
>          /* this is released in the dev's release function */ 
> @@ -3617,6 +3629,23 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct 
> nlmsghdr *nlh, uint32_t *group) 
>                  else 
>                          transport->destroy_session(session); 
>                  break; 
> +        case ISCSI_UEVENT_DESTROY_SESSION_ASYNC: 
> +                session = iscsi_session_lookup(ev->u.d_session.sid); 
> +                if (!session) 
> +                        err = -EINVAL; 
> +                else if (iscsi_session_has_conns(ev->u.d_session.sid)) 
> +                        err = -EBUSY; 
> +                else { 
> +                        unsigned long flags; 
> + 
> +                        /* Prevent this session from being found again */ 
> +                        spin_lock_irqsave(&sesslock, flags); 
> +                        list_move(&session->sess_list, &sessdestroylist); 
> +                        spin_unlock_irqrestore(&sesslock, flags); 
> + 
> +                        queue_work(iscsi_destroy_workq, 
> &session->destroy_work); 
> +                } 
> +                break; 
>          case ISCSI_UEVENT_UNBIND_SESSION: 
>                  session = iscsi_session_lookup(ev->u.d_session.sid); 
>                  if (session) 
> @@ -4662,8 +4691,14 @@ static __init int iscsi_transport_init(void) 
>                  goto release_nls; 
>          } 
>   
> +        iscsi_destroy_workq = 
> create_singlethread_workqueue("iscsi_destroy"); 
> +        if (!iscsi_destroy_workq) 
> +                goto destroy_wq; 
> + 
>          return 0; 
>   
> +destroy_wq: 
> +        destroy_workqueue(iscsi_eh_timer_workq); 
>  release_nls: 
>          netlink_kernel_release(nls); 
>  unregister_flashnode_bus: 
> @@ -4685,6 +4720,7 @@ static __init int iscsi_transport_init(void) 
>   
>  static void __exit iscsi_transport_exit(void) 
>  { 
> +        destroy_workqueue(iscsi_destroy_workq); 
>          destroy_workqueue(iscsi_eh_timer_workq); 
>          netlink_kernel_release(nls); 
>          bus_unregister(&iscsi_flashnode_bus); 
> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h 
> index 92b11c7e0b4f..deacaee53e61 100644 
> --- a/include/scsi/iscsi_if.h 
> +++ b/include/scsi/iscsi_if.h 
> @@ -60,6 +60,7 @@ enum iscsi_uevent_e { 
>          ISCSI_UEVENT_LOGOUT_FLASHNODE_SID        = UEVENT_BASE + 30, 
>          ISCSI_UEVENT_SET_CHAP                = UEVENT_BASE + 31, 
>          ISCSI_UEVENT_GET_HOST_STATS        = UEVENT_BASE + 32, 
> +        ISCSI_UEVENT_DESTROY_SESSION_ASYNC        = UEVENT_BASE + 33, 
>   
>          /* up events */ 
>          ISCSI_KEVENT_RECV_PDU                = KEVENT_BASE + 1, 
> diff --git a/include/scsi/scsi_transport_iscsi.h 
> b/include/scsi/scsi_transport_iscsi.h 
> index 2129dc9e2dec..fa8814245796 100644 
> --- a/include/scsi/scsi_transport_iscsi.h 
> +++ b/include/scsi/scsi_transport_iscsi.h 
> @@ -226,6 +226,7 @@ struct iscsi_cls_session { 
>          struct work_struct unblock_work; 
>          struct work_struct scan_work; 
>          struct work_struct unbind_work; 
> +        struct work_struct destroy_work; 
>   
>          /* recovery fields */ 
>          int recovery_tmo; 
> -- 
> 2.25.0.rc2 
>

Reviewed-by: Lee Duncan <lduncan@suse.com> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fb865b89-22a5-4d82-bceb-4b4075e7eacf%40googlegroups.com.

------=_Part_2936_1243338227.1579816652206
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, January 17, 2020 at 3:33:35 PM UTC-8, Gabriel K=
risman Bertazi wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">From: Fra=
nk Mayhar &lt;<a href=3D"mailto:fmayhar@google.com" target=3D"_blank" rel=
=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:fmayhar@google.com&#39=
;;return true;" onclick=3D"this.href=3D&#39;mailto:fmayhar@google.com&#39;;=
return true;">fmayhar@google.com</a>&gt;
<br>
<br>iSCSI session destruction can be arbitrarily slow, since it might
<br>require network operations and serialization inside the scsi layer.
<br>This patch adds a new user event to trigger the destruction work
<br>asynchronously, releasing the rx_queue_mutex as soon as the operation i=
s
<br>queued and before it is performed. =C2=A0This change allow other operat=
ions
<br>to run in other sessions in the meantime, removing one of the major
<br>iSCSI bottlenecks for us.
<br>
<br>To prevent the session from being used after the destruction request, w=
e
<br>remove it immediately from the sesslist. This simplifies the locking
<br>required during the asynchronous removal.
<br>
<br>Co-developed-by: Khazhismel Kumykov &lt;<a href=3D"mailto:khazhy@google=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ma=
ilto:khazhy@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailt=
o:khazhy@google.com&#39;;return true;">khazhy@google.com</a>&gt;
<br>Signed-off-by: Khazhismel Kumykov &lt;<a href=3D"mailto:khazhy@google.c=
om" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mail=
to:khazhy@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:=
khazhy@google.com&#39;;return true;">khazhy@google.com</a>&gt;
<br>Signed-off-by: Frank Mayhar &lt;<a href=3D"mailto:fmayhar@google.com" t=
arget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:fm=
ayhar@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:fmay=
har@google.com&#39;;return true;">fmayhar@google.com</a>&gt;
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
<br>
<br>This patch requires a patch that just went upstream to apply cleanly.
<br>it is (&quot;iscsi: Don&#39;t destroy session if there are outstanding
<br>connections&quot;), which was just merged by Martin into 5.6/scsi-queue=
.
<br>Please make sure you have it in your tree, otherwise this one won&#39;t
<br>apply.
<br>
<br>=C2=A0drivers/scsi/scsi_transport_<wbr>iscsi.c | 36 +++++++++++++++++++=
++++++++++
<br>=C2=A0include/scsi/iscsi_if.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | =C2=A01 +
<br>=C2=A0include/scsi/scsi_transport_<wbr>iscsi.h | =C2=A01 +
<br>=C2=A03 files changed, 38 insertions(+)
<br>
<br>diff --git a/drivers/scsi/scsi_transport_<wbr>iscsi.c b/drivers/scsi/sc=
si_transport_<wbr>iscsi.c
<br>index ba6cfaf71aef..e9a8e0317b0d 100644
<br>--- a/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>+++ b/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>@@ -95,6 +95,8 @@ static DECLARE_WORK(stop_conn_work, stop_conn_work_fn=
);
<br>=C2=A0static atomic_t iscsi_session_nr; /* sysfs session id for next ne=
w session */
<br>=C2=A0static struct workqueue_struct *iscsi_eh_timer_workq;
<br>=C2=A0
<br>+static struct workqueue_struct *iscsi_destroy_workq;
<br>+
<br>=C2=A0static DEFINE_IDA(iscsi_sess_ida);
<br>=C2=A0/*
<br>=C2=A0 * list of registered transports and lock that must
<br>@@ -1615,6 +1617,7 @@ static struct sock *nls;
<br>=C2=A0static DEFINE_MUTEX(rx_queue_mutex);
<br>=C2=A0
<br>=C2=A0static LIST_HEAD(sesslist);
<br>+static LIST_HEAD(sessdestroylist);
<br>=C2=A0static DEFINE_SPINLOCK(sesslock);
<br>=C2=A0static LIST_HEAD(connlist);
<br>=C2=A0static LIST_HEAD(connlist_err);
<br>@@ -2035,6 +2038,14 @@ static void __iscsi_unbind_session(struct work_s=
truct *work)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_DBG_TRANS_<=
wbr>SESSION(session, &quot;Completed target removal\n&quot;);
<br>=C2=A0}
<br>=C2=A0
<br>+static void __iscsi_destroy_session(struct work_struct *work)
<br>+{
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iscsi_cls_sessi=
on *session =3D
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0container_of(<wbr>work, struct iscsi_cls_session=
, destroy_work);
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0session-&gt;transport-=
&gt;<wbr>destroy_session(session);
<br>+}
<br>+
<br>=C2=A0struct iscsi_cls_session *
<br>=C2=A0iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transpo=
rt *transport,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0int dd_size)
<br>@@ -2057,6 +2068,7 @@ iscsi_alloc_session(struct Scsi_Host *shost, stru=
ct iscsi_transport *transport,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_WORK(&amp;se=
ssion-&gt;<wbr>block_work, __iscsi_block_session);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_WORK(&amp;se=
ssion-&gt;<wbr>unbind_work, __iscsi_unbind_session);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_WORK(&amp;se=
ssion-&gt;<wbr>scan_work, iscsi_scan_session);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_WORK(&amp;session=
-&gt;<wbr>destroy_work, __iscsi_destroy_session);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_init(&a=
mp;<wbr>session-&gt;lock);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* this is releas=
ed in the dev&#39;s release function */
<br>@@ -3617,6 +3629,23 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nl=
msghdr *nlh, uint32_t *group)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>transport-&gt;destroy_session(<wbr>session);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ISCSI_UEVENT_DEST=
ROY_SESSION_<wbr>ASYNC:
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0session =3D iscsi_session_lookup(ev-&gt;u.d_<wbr=
>session.sid);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!session)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
err =3D -EINVAL;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (iscsi_session_has_conns(ev-&gt;<wbr>u.d=
_session.sid))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
err =3D -EBUSY;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0else {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>unsigned long flags;
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
/* Prevent this session from being found again */
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
spin_<wbr>lock_irqsave(&amp;sesslock, flags);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
list_<wbr>move(&amp;session-&gt;sess_list, &amp;sessdestroylist);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
spin_<wbr>unlock_irqrestore(&amp;sesslock, flags);
<br>+
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>queue_work(iscsi_destroy_<wbr>workq, &amp;session-&gt;destroy_work);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ISCSI_UEVENT=
_UNBIND_SESSION:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0session =3D iscsi_session_lookup(ev-&gt;u.=
d_<wbr>session.sid);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (session)
<br>@@ -4662,8 +4691,14 @@ static __init int iscsi_transport_init(void)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto release_nls;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iscsi_destroy_workq =
=3D create_singlethread_workqueue(<wbr>&quot;iscsi_destroy&quot;);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!iscsi_destroy_wor=
kq)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0goto destroy_wq;
<br>+
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>=C2=A0
<br>+destroy_wq:
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0destroy_workqueue(<wbr=
>iscsi_eh_timer_workq);
<br>=C2=A0release_nls:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0netlink_kernel_<w=
br>release(nls);
<br>=C2=A0unregister_flashnode_bus:
<br>@@ -4685,6 +4720,7 @@ static __init int iscsi_transport_init(void)
<br>=C2=A0
<br>=C2=A0static void __exit iscsi_transport_exit(void)
<br>=C2=A0{
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0destroy_workqueue(<wbr=
>iscsi_destroy_workq);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0destroy_workqueue=
(<wbr>iscsi_eh_timer_workq);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0netlink_kernel_<w=
br>release(nls);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bus_unregister(&a=
mp;<wbr>iscsi_flashnode_bus);
<br>diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
<br>index 92b11c7e0b4f..deacaee53e61 100644
<br>--- a/include/scsi/iscsi_if.h
<br>+++ b/include/scsi/iscsi_if.h
<br>@@ -60,6 +60,7 @@ enum iscsi_uevent_e {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_UEVENT_LOGO=
UT_<wbr>FLASHNODE_SID=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D UE=
VENT_BASE + 30,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_UEVENT_SET_=
<wbr>CHAP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D UEVENT_BASE + 31,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_UEVENT_GET_=
<wbr>HOST_STATS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D UEVENT_B=
ASE + 32,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_UEVENT_DESTROY_<=
wbr>SESSION_ASYNC=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D UEVENT=
_BASE + 33,
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* up events */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ISCSI_KEVENT_RECV=
_<wbr>PDU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D KEVENT_BASE + 1,
<br>diff --git a/include/scsi/scsi_transport_<wbr>iscsi.h b/include/scsi/sc=
si_transport_<wbr>iscsi.h
<br>index 2129dc9e2dec..fa8814245796 100644
<br>--- a/include/scsi/scsi_transport_<wbr>iscsi.h
<br>+++ b/include/scsi/scsi_transport_<wbr>iscsi.h
<br>@@ -226,6 +226,7 @@ struct iscsi_cls_session {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct work_struc=
t unblock_work;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct work_struc=
t scan_work;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct work_struc=
t unbind_work;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct work_struct des=
troy_work;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* recovery field=
s */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int recovery_tmo;
<br>--=20
<br>2.25.0.rc2
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
om/d/msgid/open-iscsi/fb865b89-22a5-4d82-bceb-4b4075e7eacf%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/fb865b89-22a5-4d82-bceb-4b4075e7eacf%40googlegroups.com</a>.<b=
r />

------=_Part_2936_1243338227.1579816652206--

------=_Part_2935_1398068101.1579816652206--
