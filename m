Return-Path: <open-iscsi+bncBC755V5RXMKBBIUJ4X6QKGQELYE3IPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 942A02BC09F
	for <lists+open-iscsi@lfdr.de>; Sat, 21 Nov 2020 17:47:32 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id q22sf5379991ood.0
        for <lists+open-iscsi@lfdr.de>; Sat, 21 Nov 2020 08:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=g2DRmvyAeNoruB+144BIp7G3FY8cv6QPzbq9EzmbGGw=;
        b=ouOgxIsRMGb9oXgOiHkHNOPsjMk7Gc/QQ4DNInLx1jvK6a0Y7zmR/ChcQp3qgoT5aT
         MkhTXouLmIrCwxFGfYMYGAESWB3X2FHBp6QsqHnTFZ+SUO6//c1cb+qeva3hhQu5ijRa
         xeVJkKY7SbyIfg6pBT16SRbeJ+2XM+KWgwbMMjjAQAA8U9i3b7Ntf9xuUv4faO+YSAhI
         uzBC2B1xJvPlnD/e7r7MDzwbYW3S/7yLEoibR3DUQyINF94RRjp5dFBNAZgyfCHMPu1r
         4oRt9mGDqHXn7N0ulBMJ+uAsDtQo3vwiCVd+JblwCIct2xRudg0kd/IBuUFl4k2IGI8g
         IFGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2DRmvyAeNoruB+144BIp7G3FY8cv6QPzbq9EzmbGGw=;
        b=lHCTJbGSGtRnjMg/9SfkuykEqCPigDuhNa7htQ3IhFSvZXhsqnK0zUFLflfqs+ip4a
         z/iQALckvHK6hUx2cjbHOgKBgr+8kBLfom/6Pa8bbhK2uKi0sbnpDYb284PN7TP1qBw2
         ij4xIuZcWRQ0rw79nbXjy6HqXrZFbNFOG9tPU7vij1ezIVzFg4QvGg2VUf/rxOS9IkAw
         Zg7Ly/JYliF8mn1K+/7ft+ZIzHRBcgvLYysD2ACa9CoFz2RYhZmSI2aFg9o5Slt0iQhb
         j2xMzYL1HFwI60PFg8WKLIgcXZi37NX8ZOAGgJVFBWBDJWjmDtQMeedSJcR8MDmBilpc
         0CkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g2DRmvyAeNoruB+144BIp7G3FY8cv6QPzbq9EzmbGGw=;
        b=QSOVqhz3p3EGAk8Lj68LeOKsdXRqfHvocpOLRtOHuAPPsmqKuK+q6j71ERzQcHg+yC
         k7ohYOZ4HIPRLT1n3vY6+iRp+TGWv9AeqNiTv9mcd2aCo0OWziL4fJgskRIe7cIvOY/P
         KH5GXB+fBXHNfnIInIHjqWOh92oKcoIi7jhyzSdSLAYVd7wMODona68kQ9s4IH89xcDR
         poQYSSc7L7Te/tGQdTlBMza+MNf7hIfGKXG4yAfj+jnKzy5olDnbQJtYXq5ySfmj0aYz
         pF0RY11VKSJfXot/WBSwU2O+5SXcRH3V9K7m0JiLxH9Vcppm0HzmWF2N3EbJwF7k8WV0
         rhOg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532CiLTbGGgvhCiurhy2Ru0nV/tPuuCzooaekK2xydHTr6sSuy4z
	mI/WiZVVyV/oG89NgQqncyA=
X-Google-Smtp-Source: ABdhPJzuhnSSBbV39WtFDWgAsfAN1wXT4K/8TZ5xN5pzZ2P6NDwx+XswYYp9sHkXQ5LZYVQeYNXBaQ==
X-Received: by 2002:aca:5e03:: with SMTP id s3mr10201703oib.125.1605977251208;
        Sat, 21 Nov 2020 08:47:31 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls2357483oif.3.gmail; Sat, 21
 Nov 2020 08:47:30 -0800 (PST)
X-Received: by 2002:aca:e046:: with SMTP id x67mr10042657oig.141.1605977250389;
        Sat, 21 Nov 2020 08:47:30 -0800 (PST)
Date: Sat, 21 Nov 2020 08:47:29 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e7accc7d-26e7-4d89-9f0d-77c299326aeen@googlegroups.com>
In-Reply-To: <48883f4d-edfa-4a8d-9d45-aa5225f82e57@default>
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
 <9df96d73-015c-4de6-96fa-2f315b066909@default>
 <48883f4d-edfa-4a8d-9d45-aa5225f82e57@default>
Subject: Re: [PATCH] iscsi: Do Not set param when sock is NULL
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2320_158244606.1605977249523"
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

------=_Part_2320_158244606.1605977249523
Content-Type: multipart/alternative; 
	boundary="----=_Part_2321_2033531680.1605977249523"

------=_Part_2321_2033531680.1605977249523
Content-Type: text/plain; charset="UTF-8"

The patch concept is good. I have a couple of issues though.

First, you say you will return EPERM, but you return ENOTCONN. Update the 
text to match to code?

Also, the indentation seems messed up? It's hard to tell using the web 
interface. If so, please fix.

On Monday, November 16, 2020 at 9:08:59 PM UTC-8 Gulam Mohamed wrote:

> Gentle reminder.
>
> Regards,
> Gulam Mohamed.
>
> -----Original Message-----
> From: Gulam Mohamed 
> Sent: Thursday, November 5, 2020 11:11 AM
> To: Lee Duncan <ldu...@suse.com>; Chris Leech <cle...@redhat.com>; James 
> E.J. Bottomley <je...@linux.ibm.com>; Martin K. Petersen <
> martin....@oracle.com>; open-...@googlegroups.com; 
> linux...@vger.kernel.org; linux-...@vger.kernel.org
> Cc: Junxiao Bi <junxi...@oracle.com>
> Subject: [PATCH] iscsi: Do Not set param when sock is NULL
>
> Description
> =========
> 1. This Kernel panic could be due to a timing issue when there is a race 
> between the sync thread and the initiator was processing of a login 
> response from the target. The session re-open can be invoked from two places
> a. Sessions sync thread when the iscsid restart
> b. From iscsid through iscsi error handler
> 2. The session reopen sequence is as follows in user-space 
> (iscsi-initiator-utils)
> a. Disconnect the connection
> b. Then send the stop connection request to the kernel which releases the 
> connection (releases the socket)
> c. Queues the reopen for 2 seconds delay
> d. Once the delay expires, create the TCP connection again by calling the 
> connect() call
> e. Poll for the connection
> f. When poll is successful i.e when the TCP connection is established, it 
> performs
> i. Creation of session and connection data structures
> ii. Bind the connection to the session. This is the place where we assign 
> the sock to tcp_sw_conn->sock
> iii. Sets the parameters like target name, persistent address etc .
> iv. Creates the login pdu
> v. Sends the login pdu to kernel
> vi. Returns to the main loop to process further events. The kernel then 
> sends the login request over to the target node
> g. Once login response with success is received, it enters into full 
> feature phase and sets the negotiable parameters like max_recv_data_length, 
> max_transmit_length, data_digest etc . 3. While setting the negotiable 
> parameters by calling "iscsi_session_set_neg_params()", kernel panicked as 
> sock was NULL
>
> What happened here is
> --------------------------------
> 1. Before initiator received the login response mentioned in above point 
> 2.f.v, another reopen request was sent from the error handler/sync session 
> for the same session, as the initiator utils was in main loop to process 
> further events (as 
> mentioned in point 2.f.vi above). 
> 2. While processing this reopen, it stopped the connection which released 
> the socket and queued this connection and at this point of time the login 
> response was received for the earlier one
> 3. The kernel passed over this response to user-space which then sent the 
> set_neg_params request to kernel
> 4. As the connection was stopped, the sock was NULL and hence while the 
> kernel was processing the set param request from user-space, it panicked
>
> Fix
> ----
> 1. While setting the set_param in kernel, we need to check if sock is NULL
> 2. If the sock is NULL, then return EPERM (operation not permitted)
> 3. Due to this error handler will be invoked in user-space again to 
> recover the session
>
> Signed-off-by: Gulam Mohamed <gulam....@oracle.com>
> Reviewed-by: Junxiao Bi <junxi...@oracle.com>
> ---
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c index 
> df47557a02a3..fd668a194053 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct 
> iscsi_cls_conn *cls_conn,
> struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
> struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>
> + if (!tcp_sw_conn->sock) {
> + iscsi_conn_printk(KERN_ERR, conn,
> + "Cannot set param as sock is NULL\n");
> + return -ENOTCONN;
> + }
> +
> switch(param) {
> case ISCSI_PARAM_HDRDGST_EN:
> iscsi_set_param(cls_conn, param, buf, buflen);
> --
> 2.18.4
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e7accc7d-26e7-4d89-9f0d-77c299326aeen%40googlegroups.com.

------=_Part_2321_2033531680.1605977249523
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>The patch concept is good. I have a couple of issues though.</div><div=
><br></div><div>First, you say you will return EPERM, but you return ENOTCO=
NN. Update the text to match to code?</div><div><br></div><div>Also, the in=
dentation seems messed up? It's hard to tell using the web interface. If so=
, please fix.<br></div><br><div class=3D"gmail_quote"><div dir=3D"auto" cla=
ss=3D"gmail_attr">On Monday, November 16, 2020 at 9:08:59 PM UTC-8 Gulam Mo=
hamed wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0=
 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">=
Gentle reminder.
<br>
<br>Regards,
<br>Gulam Mohamed.
<br>
<br>-----Original Message-----
<br>From: Gulam Mohamed=20
<br>Sent: Thursday, November 5, 2020 11:11 AM
<br>To: Lee Duncan &lt;<a href data-email-masked rel=3D"nofollow">ldu...@su=
se.com</a>&gt;; Chris Leech &lt;<a href data-email-masked rel=3D"nofollow">=
cle...@redhat.com</a>&gt;; James E.J. Bottomley &lt;<a href data-email-mask=
ed rel=3D"nofollow">je...@linux.ibm.com</a>&gt;; Martin K. Petersen &lt;<a =
href data-email-masked rel=3D"nofollow">martin....@oracle.com</a>&gt;; <a h=
ref data-email-masked rel=3D"nofollow">open-...@googlegroups.com</a>; <a hr=
ef data-email-masked rel=3D"nofollow">linux...@vger.kernel.org</a>; <a href=
 data-email-masked rel=3D"nofollow">linux-...@vger.kernel.org</a>
<br>Cc: Junxiao Bi &lt;<a href data-email-masked rel=3D"nofollow">junxi...@=
oracle.com</a>&gt;
<br>Subject: [PATCH] iscsi: Do Not set param when sock is NULL
<br>
<br>Description
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D
<br>1. This Kernel panic could be due to a timing issue when there is a rac=
e between the sync thread and the initiator was processing of a login respo=
nse from the target. The session re-open can be invoked from two places
<br>          a.	Sessions sync thread when the iscsid restart
<br>          b.	From iscsid through iscsi error handler
<br>2. The session reopen sequence is as follows in user-space (iscsi-initi=
ator-utils)
<br>          a.	Disconnect the connection
<br>          b.	Then send the stop connection request to the kernel which =
releases the connection (releases the socket)
<br>          c.	Queues the reopen for 2 seconds delay
<br>         d.	Once the delay expires, create the TCP connection again by =
calling the connect() call
<br>         e.	Poll for the connection
<br>          f.	When poll is successful i.e when the TCP connection is est=
ablished, it performs
<br>	i. Creation of session and connection data structures
<br>	ii. Bind the connection to the session. This is the place where we ass=
ign the sock to tcp_sw_conn-&gt;sock
<br>	iii. Sets the parameters like target name, persistent address etc .
<br>	iv. Creates the login pdu
<br>	v. Sends the login pdu to kernel
<br>	vi. Returns to the main loop to process further events. The kernel the=
n sends the login request over to the target node
<br>	g. Once login response with success is received, it enters into full f=
eature phase and sets the negotiable parameters like max_recv_data_length, =
max_transmit_length, data_digest etc . 3. While setting the negotiable para=
meters by calling &quot;iscsi_session_set_neg_params()&quot;, kernel panick=
ed as sock was NULL
<br>
<br>What happened here is
<br>--------------------------------
<br>1.	Before initiator received the login response mentioned in above poin=
t 2.f.v, another reopen request was sent from the error handler/sync sessio=
n for the same session, as the initiator utils was in main loop to process =
further events (as=20
<br>	mentioned in point <a href=3D"http://2.f.vi" target=3D"_blank" rel=3D"=
nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=
=3Dhttp://2.f.vi&amp;source=3Dgmail&amp;ust=3D1606003801488000&amp;usg=3DAF=
QjCNFYB3xs4kuAm8RGl0FT1d8CzipA4A">2.f.vi</a> above).=20
<br>2.	While processing this reopen, it stopped the connection which releas=
ed the socket and queued this connection and at this point of time the logi=
n response was received for the earlier one
<br>3.	The kernel passed over this response to user-space which then sent t=
he set_neg_params request to kernel
<br>4.	As the connection was stopped, the sock was NULL and hence while the=
 kernel was processing the set param request from user-space, it panicked
<br>
<br>Fix
<br>----
<br>1.	While setting the set_param in kernel, we need to check if sock is N=
ULL
<br>2.	If the sock is NULL, then return EPERM (operation not permitted)
<br>3.	Due to this error handler will be invoked in user-space again to rec=
over the session
<br>
<br>Signed-off-by: Gulam Mohamed &lt;<a href data-email-masked rel=3D"nofol=
low">gulam....@oracle.com</a>&gt;
<br>Reviewed-by: Junxiao Bi &lt;<a href data-email-masked rel=3D"nofollow">=
junxi...@oracle.com</a>&gt;
<br>---
<br>diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c index =
df47557a02a3..fd668a194053 100644
<br>--- a/drivers/scsi/iscsi_tcp.c
<br>+++ b/drivers/scsi/iscsi_tcp.c
<br>@@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscs=
i_cls_conn *cls_conn,
<br>        struct iscsi_tcp_conn *tcp_conn =3D conn-&gt;dd_data;
<br>        struct iscsi_sw_tcp_conn *tcp_sw_conn =3D tcp_conn-&gt;dd_data;
<br>
<br>+       if (!tcp_sw_conn-&gt;sock) {
<br>+               iscsi_conn_printk(KERN_ERR, conn,
<br>+                               &quot;Cannot set param as sock is NULL\=
n&quot;);
<br>+               return -ENOTCONN;
<br>+       }
<br>+
<br>        switch(param) {
<br>        case ISCSI_PARAM_HDRDGST_EN:
<br>                iscsi_set_param(cls_conn, param, buf, buflen);
<br>--
<br>2.18.4
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e7accc7d-26e7-4d89-9f0d-77c299326aeen%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/e7accc7d-26e7-4d89-9f0d-77c299326aeen%40googlegroups.com</a>.=
<br />

------=_Part_2321_2033531680.1605977249523--

------=_Part_2320_158244606.1605977249523--
