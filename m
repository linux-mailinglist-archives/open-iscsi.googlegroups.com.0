Return-Path: <open-iscsi+bncBC755V5RXMKBBKHOQX3AKGQEFCAX7SY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD611D6B92
	for <lists+open-iscsi@lfdr.de>; Sun, 17 May 2020 19:40:57 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id v17sf3274925qtp.15
        for <lists+open-iscsi@lfdr.de>; Sun, 17 May 2020 10:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YI//ySKFSzCQbxnqeEPFDGopf0lN0NsIg1BVkmxYrOQ=;
        b=f4LV4JmNd026PJjOFuYHnSqrng+758xwV654iAIcmI8p9zOgA/dG/wz8zlQqQ+P88l
         3/pCYOmPgHCig4UAlZoXdsHNVZ1mTZjGKDhRbqjxEIiO+MZeoe63tF4qntiDDBpGbPCm
         F++PJSFnQTTn0XIsNZcjjgDsAE0pk5nIRQjh7HmV5aopZnQOXu4Bh0KJxQlIXWmgP3zb
         Yw60NL1HBDz6QIp3I/c97XSkPTBLMw27JTENELs9X4j3CeoxcVNjgmb51nYnAt9bpyUD
         76Ao+fPIbDCD0QgSnkCHKugcXJx9Mnf7MBGm7hh5YBwCUZdaTfhPlwBTZMqYmJquwN9N
         ddeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YI//ySKFSzCQbxnqeEPFDGopf0lN0NsIg1BVkmxYrOQ=;
        b=tbOyQPsmCbbHa19He0skcDyCXWBxzDQdKio94JUPI/eTOkXm5BWacQHMMuMC3z/Jeb
         GnbPUGG4ylEVefqf/o/9d/MEC+LT0J9GM5cFJxUKUq3Lar64NB+gnUB5nytG95wXL5Dz
         /SBkFI/puCKJKIKw4ibzc/7JczELFeW1+JKzMHnDbRO9XPQ/M+avHvziJ3eBm61llGjH
         gSxViPnBRVC253Zgd7djZLlXYyaPEPFxD5GMNERuPgDyd/YSet24enpJDZ4uwl24bpL3
         ZF/37HDK7MSuIh9rrXKiW55iyqv89Sfqbajh8OAkBRfGUtlPDLo5E1bmiGJUCL+Sq/dI
         eK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YI//ySKFSzCQbxnqeEPFDGopf0lN0NsIg1BVkmxYrOQ=;
        b=fncVCow7D3KO2uIXVM1r5QgjKtqnezWYNCYlQd5PZU3izi8/XJw4cDAlbQu1U5A2nO
         KasJ8LljA6ffBOuPJwJ/AaU0/f/IkFvvz9nOsG7oS0xGAuU20qpns2DJN3w8tvyI/ZfH
         INsg0rl2a6WDlYxk26huSDxqaLXEC7vO6Oe4V4sxyPJEKxagxRi2tjjb6jYgpzNW4ITm
         CG9kxlHNDH4vO53Jt+ksFFl+zk9oDYYN3KVwTRcuo15vy68QMkqg//KHYxxGfb0vQroo
         NIO/nWXKRb1kOnQmxQnW/aXRvi2lqoEv72QXgHOhnzh2gH3GQJJBhBNIf0L8+gksEiTe
         9ghA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531E1/6QMV45fjisnV9pgXF0tpnzvjYwnLsz9ymdI7FcHu/I2Q1l
	SdRDaP7icTAeix9opnNjuRg=
X-Google-Smtp-Source: ABdhPJxYsjdP0MZCLQAewu8mH36fhmmFHQ7yKUCI4E1iVDfcWH0kUOx0b1MFC4EihyprtIu6zvxL8w==
X-Received: by 2002:ac8:66c6:: with SMTP id m6mr12826577qtp.25.1589737256694;
        Sun, 17 May 2020 10:40:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:2d62:: with SMTP id h89ls3003937qtd.0.gmail; Sun, 17 May
 2020 10:40:56 -0700 (PDT)
X-Received: by 2002:ac8:7482:: with SMTP id v2mr12493200qtq.328.1589737256121;
        Sun, 17 May 2020 10:40:56 -0700 (PDT)
Date: Sun, 17 May 2020 10:40:55 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f5da6f33-c444-4746-8ebf-94003efbbfc2@googlegroups.com>
In-Reply-To: <20200505011908.15538-1-bob.liu@oracle.com>
References: <20200505011908.15538-1-bob.liu@oracle.com>
Subject: Re: [RFC RESEND PATCH v2] scsi: iscsi: register sysfs for iscsi
 workqueue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1145_1918680250.1589737255172"
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

------=_Part_1145_1918680250.1589737255172
Content-Type: multipart/alternative; 
	boundary="----=_Part_1146_973755281.1589737255172"

------=_Part_1146_973755281.1589737255172
Content-Type: text/plain; charset="UTF-8"

On Monday, May 4, 2020 at 6:24:20 PM UTC-7, Bob Liu wrote:
>
> Motivation: 
> This patch enable setting cpu affinity through "cpumask" for iscsi 
> workqueues 
> (iscsi_q_xx and iscsi_eh), so as to get performance isolation. 
>

Please summarize for this performance-idiot how setting thee CPU affinity 
helps you in any way? Is it for testing purposes only, does it cause some 
performance gains in some cases, and if so, which ones? 

>
> The max number of active worker was changed form 1 to 2, because "cpumask" 
> of 
> ordered workqueue isn't allowed to change. 
>
> Notes: 
> - Having 2 workers break the current ordering guarantees, please let me 
> know 
>   if anyone depends on this. 
>

Have you tested with normal iSCSI IO from multiple initiators and targets?


> - __WQ_LEGACY have to be left because of 
> 23d11a5(workqueue: skip flush dependency checks for legacy workqueues) 
>

I have no issue with this part (now), but normally, when you send out a 
second version of a patch, you add a section that says something like:

> Changes since V1:
> * change 1
> * ...

And you change the subject from "[PATCH] ..." to "[PATCHv2] ..." or "[PATCH 
v2] ...". This helps folks that review lots of patches to recognize they 
might only need to review the new bits.

In your case, you may have only changed the Description, but even that's 
worthy of a mention IMHO. But I won't (normally) reject a patch for this, 
but I appreciate when it's done correctly.

>
> Signed-off-by: Bob Liu <bob.liu@oracle.com> 
> --- 
>  drivers/scsi/libiscsi.c             | 4 +++- 
>  drivers/scsi/scsi_transport_iscsi.c | 4 +++- 
>  2 files changed, 6 insertions(+), 2 deletions(-) 
>
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c 
> index 70b99c0..adf9bb4 100644 
> --- a/drivers/scsi/libiscsi.c 
> +++ b/drivers/scsi/libiscsi.c 
> @@ -2627,7 +2627,9 @@ struct Scsi_Host *iscsi_host_alloc(struct 
> scsi_host_template *sht, 
>          if (xmit_can_sleep) { 
>                  snprintf(ihost->workq_name, sizeof(ihost->workq_name), 
>                          "iscsi_q_%d", shost->host_no); 
> -                ihost->workq = 
> create_singlethread_workqueue(ihost->workq_name); 
> +                ihost->workq = alloc_workqueue("%s", 
> +                        WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | 
> WQ_UNBOUND, 
> +                        2, ihost->workq_name); 
>                  if (!ihost->workq) 
>                          goto free_host; 
>          } 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c 
> index dfc726f..bdbc4a2 100644 
> --- a/drivers/scsi/scsi_transport_iscsi.c 
> +++ b/drivers/scsi/scsi_transport_iscsi.c 
> @@ -4602,7 +4602,9 @@ static __init int iscsi_transport_init(void) 
>                  goto unregister_flashnode_bus; 
>          } 
>   
> -        iscsi_eh_timer_workq = create_singlethread_workqueue("iscsi_eh"); 
> +        iscsi_eh_timer_workq = alloc_workqueue("%s", 
> +                        WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | 
> WQ_UNBOUND, 
> +                        2, "iscsi_eh"); 
>          if (!iscsi_eh_timer_workq) { 
>                  err = -ENOMEM; 
>                  goto release_nls; 
> -- 
> 2.9.5 
>
>
If you answer is that is has been tested, then I'll be glad to add my 
reviewed-by. 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f5da6f33-c444-4746-8ebf-94003efbbfc2%40googlegroups.com.

------=_Part_1146_973755281.1589737255172
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, May 4, 2020 at 6:24:20 PM UTC-7, Bob Liu wrote:=
<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bor=
der-left: 1px #ccc solid;padding-left: 1ex;">Motivation:
<br>This patch enable setting cpu affinity through &quot;cpumask&quot; for =
iscsi workqueues
<br>(iscsi_q_xx and iscsi_eh), so as to get performance isolation.
<br></blockquote><div><br></div><div>Please summarize for this performance-=
idiot how setting thee CPU affinity helps you in any way? Is it for testing=
 purposes only, does it cause some performance gains in some cases, and if =
so, which ones? <br></div><blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>The max number of active worker was changed form 1 to 2, because &quot;=
cpumask&quot; of
<br>ordered workqueue isn&#39;t allowed to change.
<br>
<br>Notes:
<br>- Having 2 workers break the current ordering guarantees, please let me=
 know
<br>=C2=A0 if anyone depends on this.
<br></blockquote><div><br></div><div>Have you tested with normal iSCSI IO f=
rom multiple initiators and targets?</div><div> <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">
<br>- __WQ_LEGACY have to be left because of
<br>23d11a5(workqueue: skip flush dependency checks for legacy workqueues)
<br></blockquote><div><br></div><div>I have no issue with this part (now), =
but normally, when you send out a second version of a patch, you add a sect=
ion that says something like:</div><div><br></div><div>&gt; Changes since V=
1:</div><div>&gt; * change 1</div><div>&gt; * ...</div><div><br></div><div>=
And you change the subject from &quot;[PATCH] ...&quot; to &quot;[PATCHv2] =
...&quot; or &quot;[PATCH v2] ...&quot;. This helps folks that review lots =
of patches to recognize they might only need to review the new bits.</div><=
div><br></div><div>In your case, you may have only changed the Description,=
 but even that&#39;s worthy of a mention IMHO. But I won&#39;t (normally) r=
eject a patch for this, but I appreciate when it&#39;s done correctly.<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8e=
x;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>Signed-off-by: Bob Liu &lt;<a href=3D"mailto:bob.liu@oracle.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:bob.liu=
@oracle.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:bob.liu@o=
racle.com&#39;;return true;">bob.liu@oracle.com</a>&gt;
<br>---
<br>=C2=A0drivers/scsi/libiscsi.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | 4 +++-
<br>=C2=A0drivers/scsi/scsi_transport_<wbr>iscsi.c | 4 +++-
<br>=C2=A02 files changed, 6 insertions(+), 2 deletions(-)
<br>
<br>diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
<br>index 70b99c0..adf9bb4 100644
<br>--- a/drivers/scsi/libiscsi.c
<br>+++ b/drivers/scsi/libiscsi.c
<br>@@ -2627,7 +2627,9 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_ho=
st_template *sht,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (xmit_can_slee=
p) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0snprintf(<wbr>ihost-&gt;workq_name, sizeof=
(ihost-&gt;workq_name),
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;<wbr>iscsi_q_%d&quot;, shost-&gt;host_no);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ihost-&gt;workq =3D create_singlethread_workqueu=
e(<wbr>ihost-&gt;workq_name);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ihost-&gt;workq =3D alloc_workqueue(&quot;%s&quo=
t;,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
WQ_<wbr>SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
2, ihost-&gt;workq_name);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!ihost-&gt;workq)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto free_host;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>diff --git a/drivers/scsi/scsi_transport_<wbr>iscsi.c b/drivers/scsi/sc=
si_transport_<wbr>iscsi.c
<br>index dfc726f..bdbc4a2 100644
<br>--- a/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>+++ b/drivers/scsi/scsi_transport_<wbr>iscsi.c
<br>@@ -4602,7 +4602,9 @@ static __init int iscsi_transport_init(void)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto unregister_flashnode_bus;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iscsi_eh_timer_workq =
=3D create_singlethread_workqueue(<wbr>&quot;iscsi_eh&quot;);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iscsi_eh_timer_workq =
=3D alloc_workqueue(&quot;%s&quot;,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
WQ_<wbr>SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
2, &quot;iscsi_eh&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!iscsi_eh_tim=
er_workq) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D -ENOMEM;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto release_nls;
<br>--=20
<br>2.9.5
<br>
<br></blockquote><div><br></div><div>If you answer is that is has been test=
ed, then I&#39;ll be glad to add my reviewed-by. <br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f5da6f33-c444-4746-8ebf-94003efbbfc2%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/f5da6f33-c444-4746-8ebf-94003efbbfc2%40googlegroups.com</a>.<b=
r />

------=_Part_1146_973755281.1589737255172--

------=_Part_1145_1918680250.1589737255172--
