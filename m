Return-Path: <open-iscsi+bncBC755V5RXMKBBCVPTD6AKGQEXHT4RDQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDE528D625
	for <lists+open-iscsi@lfdr.de>; Tue, 13 Oct 2020 23:09:32 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id h10sf285633oif.14
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Oct 2020 14:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=k2eWCVOGznS8MMcfoPlULBXI94a5rnBtomisPw2KGr4=;
        b=ZoJFnWnivSx4A+LC9zNlJNdDYcBALFx3DQBnqKk/Z8XO9lopKyHhvRivKOs5vxgXRj
         KCNRnVNuIC5FSLtJN30RLz3kCBZJmu1k6G4WCKLmJsBXBU9INsBCERZQHZ8Mb+CzKUws
         oltuRlAZHZDWEcwLVXiMNIUNU07SazRbwzGm7yDxZdcyrsMJHAGSjdhthruhYEH4oJw/
         lr+O24r+5t/vI85gquHuocG8EnCX3UvKJubIRxrEEQELjVFrgaCSnzJ74A5/FQZCK+G5
         PC4WW3GAnVh2kb0K9gTJ+/72Ey6FAcHoWDqrHZRTHsRDMfikx8+eamdr5tVwrutBns5k
         rJkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k2eWCVOGznS8MMcfoPlULBXI94a5rnBtomisPw2KGr4=;
        b=hXm4WIuWOC4pqwjJb1R8fdewlgTQeXpIGPEdi5y29I5Y5s2ObHbI3tKoilXHiZcm2a
         vtuWo9zeK8lfpVWLzcGK/qxcL/6p19Zesm0nIt7gZUl8KHUl/0R6GyDBwuUHhu9k2v5y
         JTQGaaBBYEXoPnpOf5eFRD+jUJBWaT4a9qXmycr+/3eK8VI06Qmt9d53N3dLe4eMj6SM
         yeEXi5sjrTp31IAZX7AVl2C1dg6zov8y7+9q2H0U5DMH2J9towZTHrJ2yL7+tJCWCKAH
         fe4bBwzNhIcGB7M+ffwRXqlNX4AzQQKZepYQ9enVZDrNhWPP70oUW3AT6u/K3gBDZX2x
         OW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k2eWCVOGznS8MMcfoPlULBXI94a5rnBtomisPw2KGr4=;
        b=aaOM+S/VwdxM8MSUPePPbRH0xo6fRwZpEXzc+CpLhdPaJ3tvbon5zsnczYF9kozR51
         Afd4w5PhG99sztzz1MsCOvIgzZr1aPfNqrSdEfqcI5Pl2mFZ5BK3VQ2gWh7BqYToNkCi
         gboT+8poLmT7+A3Wj0hMMW02YoUx1Lk9wbJ49IbvTPeMMGHw/0Tgkh5PxjZn5SApuds5
         T9AocnVc+8SkY82geNyZmn6Do1r0H4O1bn03BUUuf7qvy0pdl+eXT+77jRaGQq9AcF14
         6ViXyAlEBwKv4pFuhGZvjDko5DEYP+WsextjIpKmzkmLay0a89IUHPyD/0koHpjreK73
         NbhA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531eEr+LlBv8/kpmm2s4hhQJdlkb/XZDAwqFSI1sa/3X3H8SO+XJ
	8kWF+xU7QZV8jcNpuB0SQew=
X-Google-Smtp-Source: ABdhPJyyEa4ov1IhbBOnfhzKKnGBhKr9VGqRZBbsLR63kLHvIbzKy4aHBlrv/0Ep6Z50MyHO8zUXOQ==
X-Received: by 2002:aca:6083:: with SMTP id u125mr170465oib.14.1602623370761;
        Tue, 13 Oct 2020 14:09:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:dd0b:: with SMTP id u11ls192218oig.6.gmail; Tue, 13 Oct
 2020 14:09:30 -0700 (PDT)
X-Received: by 2002:a05:6808:89:: with SMTP id s9mr172546oic.58.1602623370209;
        Tue, 13 Oct 2020 14:09:30 -0700 (PDT)
Date: Tue, 13 Oct 2020 14:09:29 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d1b086ed-4852-49a8-a08f-1008db7d7d4fn@googlegroups.com>
In-Reply-To: <1601051302-31762-1-git-send-email-sonukumar159842@gmail.com>
References: <1601051302-31762-1-git-send-email-sonukumar159842@gmail.com>
Subject: Re: [PATCH] TODO: Update to todo list.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_960_1402256494.1602623369454"
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

------=_Part_960_1402256494.1602623369454
Content-Type: multipart/alternative; 
	boundary="----=_Part_961_1083195487.1602623369454"

------=_Part_961_1083195487.1602623369454
Content-Type: text/plain; charset="UTF-8"

I applied this patch, but I had to perform patch surgery to do so. My work 
flow is not set up for email patches. Please submit as a pull request on 
github.com/open-iscsi/open-iscsi next time. Thanks!

On Friday, September 25, 2020 at 9:28:36 AM UTC-7 sonukum...@gmail.com 
wrote:

> This patch is to update the todo list. Tasks are suggested by The
> Lee-Man
>
> Signed-off-by: Sonu k <sonukum...@gmail.com>
> ---
> TODO | 13 +++++++++++++
> 1 file changed, 13 insertions(+)
>
> diff --git a/TODO b/TODO
> index 7328180..a3d1d91 100644
> --- a/TODO
> +++ b/TODO
> @@ -377,3 +377,16 @@ I am working on this one. Hopefully it should be done 
> soon.
> it gets out of sync with the kernel version, and that's not good.
>
> ---------------------------------------------------------------------------
> +
> +13. Node database
> +
> +Current implementation of node data is not scalable. It handles database 
> using
> +some bunch of files and directories. It has not locking and can not handle
> +thousands of targets.
> +
>
> +---------------------------------------------------------------------------
> +
> +14. Migration of duplicate functionality out of iscsid/iscsiadm into 
> libopeniscsi
> +and add better error handling .
> +
>
> +---------------------------------------------------------------------------
> -- 
> 1.8.3.1
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d1b086ed-4852-49a8-a08f-1008db7d7d4fn%40googlegroups.com.

------=_Part_961_1083195487.1602623369454
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I applied this patch, but I had to perform patch surgery to do so. My work =
flow is not set up for email patches. Please submit as a pull request on gi=
thub.com/open-iscsi/open-iscsi next time. Thanks!<br><br><div class=3D"gmai=
l_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, September 25, 20=
20 at 9:28:36 AM UTC-7 sonukum...@gmail.com wrote:<br/></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rg=
b(204, 204, 204); padding-left: 1ex;">This patch is to update the todo list=
. Tasks are suggested by The
<br>Lee-Man
<br>
<br>Signed-off-by: Sonu k &lt;<a href data-email-masked rel=3D"nofollow">so=
nukum...@gmail.com</a>&gt;
<br>---
<br> TODO | 13 +++++++++++++
<br> 1 file changed, 13 insertions(+)
<br>
<br>diff --git a/TODO b/TODO
<br>index 7328180..a3d1d91 100644
<br>--- a/TODO
<br>+++ b/TODO
<br>@@ -377,3 +377,16 @@ I am working on this one. Hopefully it should be d=
one soon.
<br> it gets out of sync with the kernel version, and that&#39;s not good.
<br>=20
<br> ----------------------------------------------------------------------=
-----
<br>+
<br>+13. Node database
<br>+
<br>+Current implementation of node data is not scalable. It handles databa=
se using
<br>+some bunch of files and directories. It has not locking and can not ha=
ndle
<br>+thousands of targets.
<br>+
<br>+----------------------------------------------------------------------=
-----
<br>+
<br>+14. Migration of duplicate functionality out of iscsid/iscsiadm into l=
ibopeniscsi
<br>+and add better error handling .
<br>+
<br>+----------------------------------------------------------------------=
-----
<br>--=20
<br>1.8.3.1
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d1b086ed-4852-49a8-a08f-1008db7d7d4fn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d1b086ed-4852-49a8-a08f-1008db7d7d4fn%40googlegroups.com</a>.=
<br />

------=_Part_961_1083195487.1602623369454--

------=_Part_960_1402256494.1602623369454--
