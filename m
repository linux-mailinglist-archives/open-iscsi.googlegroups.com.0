Return-Path: <open-iscsi+bncBC755V5RXMKBB3HZZ2KAMGQEHKIHSFA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F0153722F
	for <lists+open-iscsi@lfdr.de>; Sun, 29 May 2022 20:35:26 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id d13-20020ac85acd000000b002f3be21793dsf8582864qtd.12
        for <lists+open-iscsi@lfdr.de>; Sun, 29 May 2022 11:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=v19/p0qYPMQnpl95Bw4d43LwKJek1IWcSYz0HXRTCqc=;
        b=ozj7n5J2QjY8BPbeRWxQ8catWvuzjGZZt2dcfMtgYFsoh9w5IJbn4O/jZR/le6SfNh
         7On1pQSXjhIzSNAVMzuv8PDFKmw294MjRvTA2eujnWQXDN16v/b/uyazWoS+DWKjXVFO
         2Wy+0uFxCjh7EYNOt87i4oL+uzzvwoCjD3piRw6cbwL36wjXht4fBpLBSZSN/veYr0+E
         vIN30TSuYJotisw4nqQ94YmHkurvcxzsLB4RW2YcMYmQ8iiM39uiVGbSQWazc3BSEhwT
         yAgbTE/qWQZm3xvo8UbhzVFog8XiLMD2ZiUGjwObhXCNyzPCIyExPcs/tDA8Ul4pacfB
         4Efw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v19/p0qYPMQnpl95Bw4d43LwKJek1IWcSYz0HXRTCqc=;
        b=Ur3HLP/U8a3i0Q3Yifyw4fCzMA0xXsCAxNeJtCbxLTM/fFSK6JHUD+n1yLarDXmeIC
         OXdQenjhEtz2qJfQaJ5T2oPa9T/CMT7EghuQRDoZejW64NtBKvvnW0yMt18mBBv9ywi6
         pKtrbqcg2vdO8AzE6L5veKIqM2/lpX0NVuQdjQ5eG86AGxF8o/b5OtnPjc0AEKKpJ1MM
         VJ2QqgE6vOtbO24gxq4LmnxVvyizobxpjVWjbmElzeOfqlBYVExbJRjmTNY7Nng+BwsR
         dztHojU+Ic7LJEx3Mbq+nmlAiMsYfWB9/trKKf2oC7DOu8a0aiBhhZesgdQW/flLOvGm
         tEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v19/p0qYPMQnpl95Bw4d43LwKJek1IWcSYz0HXRTCqc=;
        b=KxkQjBHHXh2SrrcJMRoxN21Iu1DEqrekR2aDZfMSqgEkrlzSw2JgYjN81NifdJ09bk
         PRA+QKsYOMW08jhFsOSvHAqD3+6fMg5L6i62NWMFZUwD3SynYo+OWuWgyWdjRUCvJAU0
         1Hl6M2B3151Csj7+zIplulwm8WfkDdM1IunsHkeVtUdOFl2HZ0dXMqSPNs+oUe13F/6w
         6gngsEVfSIwJsO1uL/p/h5p7j380lyZ1ddvMMl17EK4HQs2nVQVO8SPYWOOO3o8s1Xc7
         gvyaRG0N358N/aagDqr0eZVBT+1I3/9BaU7BuKdxq+jJ7Jkq0A9HX+pyw6tCn3qjMwiE
         ICTw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532iWdrmQjih4oyGxEBl4UX+BOaI+Psy2aq55aYqhH9o3wSTkzHC
	k3Y7iYynKHw78CeNu2PrRAU=
X-Google-Smtp-Source: ABdhPJwU59d1zrsG7JpxnslOJAmhYygC01dveavT1+/ip4z3X+vQ+6VDaD1z3CGYAi7RGmKeu0/LPQ==
X-Received: by 2002:a05:6214:2686:b0:464:523a:123c with SMTP id gm6-20020a056214268600b00464523a123cmr491670qvb.43.1653849325145;
        Sun, 29 May 2022 11:35:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:4a2a:0:b0:464:4882:4815 with SMTP id n10-20020ad44a2a000000b0046448824815ls798352qvz.10.gmail;
 Sun, 29 May 2022 11:35:23 -0700 (PDT)
X-Received: by 2002:a05:6214:238a:b0:441:76a5:2331 with SMTP id fw10-20020a056214238a00b0044176a52331mr42898509qvb.96.1653849323654;
        Sun, 29 May 2022 11:35:23 -0700 (PDT)
Date: Sun, 29 May 2022 11:35:23 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <7c9e58af-b862-4c46-89a5-c541706790aan@googlegroups.com>
In-Reply-To: <20220527083049.2552526-1-liuke94@huawei.com>
References: <20220527083049.2552526-1-liuke94@huawei.com>
Subject: Re: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1206_423604320.1653849323117"
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

------=_Part_1206_423604320.1653849323117
Content-Type: multipart/alternative; 
	boundary="----=_Part_1207_1731833756.1653849323117"

------=_Part_1207_1731833756.1653849323117
Content-Type: text/plain; charset="UTF-8"

On Sunday, May 29, 2022 at 11:33:06 AM UTC-7 keliu wrote:

> Use ida_alloc()/ida_free() instead of deprecated 
> ida_simple_get()/ida_simple_remove() . 
>
> Signed-off-by: keliu <liu...@huawei.com> 
> --- 
> drivers/scsi/hosts.c | 4 ++-- 
> drivers/scsi/scsi_transport_iscsi.c | 6 +++--- 
> 2 files changed, 5 insertions(+), 5 deletions(-) 
>
> diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c 
> index f69b77cbf538..ec16cfad034e 100644 
> --- a/drivers/scsi/hosts.c 
> +++ b/drivers/scsi/hosts.c 
> @@ -350,7 +350,7 @@ static void scsi_host_dev_release(struct device *dev) 
>
> kfree(shost->shost_data); 
>
> - ida_simple_remove(&host_index_ida, shost->host_no); 
> + ida_free(&host_index_ida, shost->host_no); 
>
> if (shost->shost_state != SHOST_CREATED) 
> put_device(parent); 
> @@ -395,7 +395,7 @@ struct Scsi_Host *scsi_host_alloc(struct 
> scsi_host_template *sht, int privsize) 
> init_waitqueue_head(&shost->host_wait); 
> mutex_init(&shost->scan_mutex); 
>
> - index = ida_simple_get(&host_index_ida, 0, 0, GFP_KERNEL); 
> + index = ida_alloc(&host_index_ida, GFP_KERNEL); 
> if (index < 0) { 
> kfree(shost); 
> return NULL; 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c 
> index 2c0dd64159b0..2578db4c095d 100644 
> --- a/drivers/scsi/scsi_transport_iscsi.c 
> +++ b/drivers/scsi/scsi_transport_iscsi.c 
> @@ -1975,7 +1975,7 @@ static void __iscsi_unbind_session(struct 
> work_struct *work) 
> scsi_remove_target(&session->dev); 
>
> if (session->ida_used) 
> - ida_simple_remove(&iscsi_sess_ida, target_id); 
> + ida_free(&iscsi_sess_ida, target_id); 
>
> unbind_session_exit: 
> iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION); 
> @@ -2044,7 +2044,7 @@ int iscsi_add_session(struct iscsi_cls_session 
> *session, unsigned int target_id) 
> return -ENOMEM; 
>
> if (target_id == ISCSI_MAX_TARGET) { 
> - id = ida_simple_get(&iscsi_sess_ida, 0, 0, GFP_KERNEL); 
> + id = ida_alloc(&iscsi_sess_ida, GFP_KERNEL); 
>
> if (id < 0) { 
> iscsi_cls_session_printk(KERN_ERR, session, 
> @@ -2083,7 +2083,7 @@ int iscsi_add_session(struct iscsi_cls_session 
> *session, unsigned int target_id) 
> device_del(&session->dev); 
> release_ida: 
> if (session->ida_used) 
> - ida_simple_remove(&iscsi_sess_ida, session->target_id); 
> + ida_free(&iscsi_sess_ida, session->target_id); 
> destroy_wq: 
> destroy_workqueue(session->workq); 
> return err; 
> -- 
> 2.25.1 
>
>
Reviewed-by: Lee Duncan <lduncan@suse.com>
 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7c9e58af-b862-4c46-89a5-c541706790aan%40googlegroups.com.

------=_Part_1207_1731833756.1653849323117
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sunday, May 29, 2022 at 11:33:06 AM UTC-7 keliu wrote:<br><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex=
; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Use ida_al=
loc()/ida_free() instead of deprecated
<br>ida_simple_get()/ida_simple_remove() .
<br>
<br>Signed-off-by: keliu &lt;<a href=3D"" data-email-masked=3D"" rel=3D"nof=
ollow">liu...@huawei.com</a>&gt;
<br>---
<br> drivers/scsi/hosts.c                | 4 ++--
<br> drivers/scsi/scsi_transport_iscsi.c | 6 +++---
<br> 2 files changed, 5 insertions(+), 5 deletions(-)
<br>
<br>diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
<br>index f69b77cbf538..ec16cfad034e 100644
<br>--- a/drivers/scsi/hosts.c
<br>+++ b/drivers/scsi/hosts.c
<br>@@ -350,7 +350,7 @@ static void scsi_host_dev_release(struct device *de=
v)
<br>=20
<br> 	kfree(shost-&gt;shost_data);
<br>=20
<br>-	ida_simple_remove(&amp;host_index_ida, shost-&gt;host_no);
<br>+	ida_free(&amp;host_index_ida, shost-&gt;host_no);
<br>=20
<br> 	if (shost-&gt;shost_state !=3D SHOST_CREATED)
<br> 		put_device(parent);
<br>@@ -395,7 +395,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_=
template *sht, int privsize)
<br> 	init_waitqueue_head(&amp;shost-&gt;host_wait);
<br> 	mutex_init(&amp;shost-&gt;scan_mutex);
<br>=20
<br>-	index =3D ida_simple_get(&amp;host_index_ida, 0, 0, GFP_KERNEL);
<br>+	index =3D ida_alloc(&amp;host_index_ida, GFP_KERNEL);
<br> 	if (index &lt; 0) {
<br> 		kfree(shost);
<br> 		return NULL;
<br>diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tr=
ansport_iscsi.c
<br>index 2c0dd64159b0..2578db4c095d 100644
<br>--- a/drivers/scsi/scsi_transport_iscsi.c
<br>+++ b/drivers/scsi/scsi_transport_iscsi.c
<br>@@ -1975,7 +1975,7 @@ static void __iscsi_unbind_session(struct work_st=
ruct *work)
<br> 	scsi_remove_target(&amp;session-&gt;dev);
<br>=20
<br> 	if (session-&gt;ida_used)
<br>-		ida_simple_remove(&amp;iscsi_sess_ida, target_id);
<br>+		ida_free(&amp;iscsi_sess_ida, target_id);
<br>=20
<br> unbind_session_exit:
<br> 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
<br>@@ -2044,7 +2044,7 @@ int iscsi_add_session(struct iscsi_cls_session *s=
ession, unsigned int target_id)
<br> 		return -ENOMEM;
<br>=20
<br> 	if (target_id =3D=3D ISCSI_MAX_TARGET) {
<br>-		id =3D ida_simple_get(&amp;iscsi_sess_ida, 0, 0, GFP_KERNEL);
<br>+		id =3D ida_alloc(&amp;iscsi_sess_ida, GFP_KERNEL);
<br>=20
<br> 		if (id &lt; 0) {
<br> 			iscsi_cls_session_printk(KERN_ERR, session,
<br>@@ -2083,7 +2083,7 @@ int iscsi_add_session(struct iscsi_cls_session *s=
ession, unsigned int target_id)
<br> 	device_del(&amp;session-&gt;dev);
<br> release_ida:
<br> 	if (session-&gt;ida_used)
<br>-		ida_simple_remove(&amp;iscsi_sess_ida, session-&gt;target_id);
<br>+		ida_free(&amp;iscsi_sess_ida, session-&gt;target_id);
<br> destroy_wq:
<br> 	destroy_workqueue(session-&gt;workq);
<br> 	return err;
<br>--=20
<br>2.25.1
<br>
<br></blockquote><div><br></div><div>Reviewed-by: Lee Duncan &lt;lduncan@su=
se.com&gt;<br>&nbsp;</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7c9e58af-b862-4c46-89a5-c541706790aan%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/7c9e58af-b862-4c46-89a5-c541706790aan%40googlegroups.com</a>.=
<br />

------=_Part_1207_1731833756.1653849323117--

------=_Part_1206_423604320.1653849323117--
