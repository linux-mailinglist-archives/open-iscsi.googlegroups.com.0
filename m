Return-Path: <open-iscsi+bncBC755V5RXMKBB7H26LZQKGQE5FI4OLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id A53CA19419C
	for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 15:34:37 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id y1sf4947207qke.3
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 07:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rNz8QE/7IfDBv2nMWLCSTWQYJ7f6TPQCBEXlpCwH47c=;
        b=pzqEZNYJusVgs8nZ24AqX9wK9NyRsqh0aCiJ8ORrRX5Ec4kWmZmNqtK/Sn7Vu468HG
         uFEN+YHAtPYE63yecYledFgyRymcegp8iJrfRUvDvaUER4vJ/ukTgOroMoDuKc/yqn4o
         jjAif4CtLv4EjUTCQyDqcJX9u8jGbNOUVRNNo/PaYJf9aTKMjSq0IWJxMYVM+7Rz8fVM
         FOjtuR/8GErmRIeVo3N4skJJFiD3mk8sg3tf7ft11MAW2SapIZox0A0lD505GHVJSulP
         QVnlpHCOlwmpMurA7i5SZ1ZnYkXvCoGzNjs7yesbYIgY2jMI27qBxhUVSykagOIVUhm1
         G9Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rNz8QE/7IfDBv2nMWLCSTWQYJ7f6TPQCBEXlpCwH47c=;
        b=DQ7toQm8A0Kv6ynNKGPuJ4Iq7cXh+ZGWf7FpFrc0n2LPrcUEXuBMVKrIQa86Au4c7y
         ohtqvco1MzFolV1UuiOkTcjdELqpZnksBdXXLkHjykHLY9AKmOTLRK1e7CsBJTzpKgNJ
         XiWGm7GYHC0KBNnlwNxh8upSWfd33G3P/IqlclFVoQNR21hoJH6/fXm6vS/9/GSrlt6M
         nB8BEL8BBDIpQWyvlKvw6VMY7x+/fdEMr1UH1wwhq926hbX3pVPHuROZu/xU4cDkaeTh
         37+phGMnMR/IWVmGjCsol7qWaTy8WhGmh0XOTE+lFG1rYoMw66fOYzf2sIQj8DlAltKq
         KVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rNz8QE/7IfDBv2nMWLCSTWQYJ7f6TPQCBEXlpCwH47c=;
        b=F504eLbyrz8pV4VAz6l8Xjr90ZAssmi7dsxkGkItB/5Bqagakr2mcF03RyyF3gwflT
         mlGJAVuHJmnemShcofHEt1WY92QHfpoMLrUr95e2LViP0s3AhZOCKmZeHdW07o/C/87R
         WtZ1NmhKSylfgvDrIRyAVKAwDM4rx7Q0FYIFFryJNtNz1pZa1LWSZd+AZIDDuUp/mnY4
         hdOWO7EhQoFEUD3RmVmwtzPJUK5/947tW12CCxHNysFSWEZRYDz/cUEL5X7zXP5gBqo4
         nLDA5sCvSY+8hpm7StIRI+2OytpK7FNFqwA8nxkJkXYb9WliA4e3xJv0cYmGG2js3UGm
         ryvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0lGOGS1bl91YuBtWYB9E4sDImrkeD0uwzSsCo2OUUhpb6kU08g
	tC0KoMd06sBYNHuvzg1swjw=
X-Google-Smtp-Source: ADFU+vtElbXg4jRqgDhxFsi3eF21HYOmWOsY5tfMsmnBMLD4oC6Zu0jks0h0LAtDv8Q92KEJ4feLXQ==
X-Received: by 2002:ad4:4d4e:: with SMTP id m14mr8400211qvm.51.1585233276509;
        Thu, 26 Mar 2020 07:34:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls2227468qtc.6.gmail; Thu, 26 Mar
 2020 07:34:36 -0700 (PDT)
X-Received: by 2002:aed:3ed0:: with SMTP id o16mr8445788qtf.3.1585233275906;
        Thu, 26 Mar 2020 07:34:35 -0700 (PDT)
Date: Thu, 26 Mar 2020 07:34:34 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <62df8000-a715-4658-b36d-cf5552a9c766@googlegroups.com>
In-Reply-To: <CAH6h+hdDRL7gOh854wf3aeh2GjKnpa8t9f-5sh21k+b7hnVbkw@mail.gmail.com>
References: <CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
 <CAH6h+hdDRL7gOh854wf3aeh2GjKnpa8t9f-5sh21k+b7hnVbkw@mail.gmail.com>
Subject: Re: replacement_timeout Override
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3744_1718718962.1585233275057"
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

------=_Part_3744_1718718962.1585233275057
Content-Type: multipart/alternative; 
	boundary="----=_Part_3745_342370281.1585233275057"

------=_Part_3745_342370281.1585233275057
Content-Type: text/plain; charset="UTF-8"

I'm glad you figured it out. Sorry I didn't reply sooner.

On Monday, March 16, 2020 at 9:40:53 PM UTC-7, Marc Smith wrote:
>
> On Sat, Mar 14, 2020 at 10:28 AM Marc Smith <msmith626@gmail.com> wrote: 
> > 
> > Hi, 
> > 
> > I'm using open-iscsi version 2.1.1. I noticed that my 
> > "replacement_timeout" value set in the node record is not being 
> > applied, or rather is not overriding the default value set in 
> > iscsid.conf: 
> > 
> > # iscsiadm -m node -T internal_redirect | grep replacement_timeout 
> > node.session.timeo.replacement_timeout = 5 
> > 
> > # cat /etc/iscsi/iscsid.conf | grep replacement_timeout 
> > node.session.timeo.replacement_timeout = 120 
> > 
> > # cat /sys/class/iscsi_session/session1/recovery_tmo 
> > 120 
> > 
> > # iscsiadm -m session -P 2 | grep Recovery 
> > Recovery Timeout: 120 
> > 
> > I can certainly change this value in iscsid.conf, but I was thinking 
> > my value in the node record would override this (for this specific 
> > target). Is it expected that this value should override what's in 
> > iscsid.conf? If so, then I assume I've hit a bug, or perhaps I have 
> > something configured incorrectly? 
>
> Okay, so after digging a bit, the default values from iscsid.conf are 
> in fact being superseded by the specific session values. That is 
> demonstrated when I run "iscsiadm -m node -T internal_redirect". The 
> only problem is the values aren't applied to the running session (the 
> sysfs attribute files for the session are not updated when the record 
> is updated). 
>
> I was changing the values for a session that was already established. 
> The solution is to set the node record values, then simply logout and 
> login. 
>
> --Marc 
>
>
> > 
> > Thanks for your time. 
> > 
> > --Marc 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/62df8000-a715-4658-b36d-cf5552a9c766%40googlegroups.com.

------=_Part_3745_342370281.1585233275057
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m glad you figured it out. Sorry I didn&#39;t reply =
sooner.<br><br>On Monday, March 16, 2020 at 9:40:53 PM UTC-7, Marc Smith wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, Mar 14, 2020 at 10=
:28 AM Marc Smith &lt;<a href=3D"mailto:msmith626@gmail.com" target=3D"_bla=
nk" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:msmith626@gmail=
.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:msmith626@gmail.=
com&#39;;return true;">msmith626@gmail.com</a>&gt; wrote:
<br>&gt;
<br>&gt; Hi,
<br>&gt;
<br>&gt; I&#39;m using open-iscsi version 2.1.1. I noticed that my
<br>&gt; &quot;replacement_timeout&quot; value set in the node record is no=
t being
<br>&gt; applied, or rather is not overriding the default value set in
<br>&gt; iscsid.conf:
<br>&gt;
<br>&gt; # iscsiadm -m node -T internal_redirect | grep replacement_timeout
<br>&gt; node.session.timeo.<wbr>replacement_timeout =3D 5
<br>&gt;
<br>&gt; # cat /etc/iscsi/iscsid.conf | grep replacement_timeout
<br>&gt; node.session.timeo.<wbr>replacement_timeout =3D 120
<br>&gt;
<br>&gt; # cat /sys/class/iscsi_session/<wbr>session1/recovery_tmo
<br>&gt; 120
<br>&gt;
<br>&gt; # iscsiadm -m session -P 2 | grep Recovery
<br>&gt; Recovery Timeout: 120
<br>&gt;
<br>&gt; I can certainly change this value in iscsid.conf, but I was thinki=
ng
<br>&gt; my value in the node record would override this (for this specific
<br>&gt; target). Is it expected that this value should override what&#39;s=
 in
<br>&gt; iscsid.conf? If so, then I assume I&#39;ve hit a bug, or perhaps I=
 have
<br>&gt; something configured incorrectly?
<br>
<br>Okay, so after digging a bit, the default values from iscsid.conf are
<br>in fact being superseded by the specific session values. That is
<br>demonstrated when I run &quot;iscsiadm -m node -T internal_redirect&quo=
t;. The
<br>only problem is the values aren&#39;t applied to the running session (t=
he
<br>sysfs attribute files for the session are not updated when the record
<br>is updated).
<br>
<br>I was changing the values for a session that was already established.
<br>The solution is to set the node record values, then simply logout and
<br>login.
<br>
<br>--Marc
<br>
<br>
<br>&gt;
<br>&gt; Thanks for your time.
<br>&gt;
<br>&gt; --Marc
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/62df8000-a715-4658-b36d-cf5552a9c766%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/62df8000-a715-4658-b36d-cf5552a9c766%40googlegroups.com</a>.<b=
r />

------=_Part_3745_342370281.1585233275057--

------=_Part_3744_1718718962.1585233275057--
