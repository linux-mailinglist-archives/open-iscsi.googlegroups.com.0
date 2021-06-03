Return-Path: <open-iscsi+bncBC755V5RXMKBBLW74OCQMGQE5H5RPUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE3B39A3F2
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Jun 2021 17:05:20 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id k6-20020a0cd6860000b029021936c6e8ffsf4611503qvi.7
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Jun 2021 08:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vnesUjO3v+gDBtVJCAfGz5EzsuEy4oKooBXDVNMJXQ0=;
        b=Sl4E8f7KvaaYZSDSTdnUE7FXZG8qnhsLMM0CXbZv38e1yjJ5SaG6AYQ74V88L1055R
         ep8cKsx2ha403Siy5J+RufZyFmorafOoTMSBq6lmdbuSuhS9AKpy+dJp1cXkSkHtIxrS
         Uuloq1AfXGK3Wyw0Mrl3uj4hljVmFjrtcpE5BHUqxtkMbN5iXKgCLjkCVFPzTiXThxBJ
         9k2fgCXKWBnlZAlOFjeM4/2wZvRuafVklKw1AsWrW+or/UJ+ITaNIJXHOgde4/9zEffo
         zH+zVVgdRs/kkGyfSOno48M4UFzWpqsEz7D6BZXrsoNucw1A2qWezfT1Y7pMaAsYARsA
         qnrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnesUjO3v+gDBtVJCAfGz5EzsuEy4oKooBXDVNMJXQ0=;
        b=Br2oeSNofCzeqNAhGYT/C7sPNRAehGdxifcKnJRHAAjFZHYHg/QBCoJeeZTwpydAaD
         XsYeA2z13g125GoYYeIfMIEpHkEzlci28pT4q7dR/mN4oIwNyiewKW5BLK5IFadtC8hk
         dj1byJzaBLcEmu0dYvqZwVma8OBzsKE/aCqLWlYR0uO4xA6nHE3taBkog32KsrvBvYHN
         hlkReAcwkL/0lS0HSOKAvRR+QWpOnUVWrk/70qDUd4zyv5kmNEJx3EPaQKjCca0U824c
         6qdYy1XbQpPMocZq8T0xqIE1x1rUunuNFjYU/UzWDUsgJ5o0gt4QbFe3z1ODfGaTidfl
         QLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnesUjO3v+gDBtVJCAfGz5EzsuEy4oKooBXDVNMJXQ0=;
        b=VI0LrsAMmyzuUpVIDDQjsPRDNwYCg0PbLe/CMw8NkboF+fcRRpE9JvsV3enAT/Trc5
         aZaBhKbAbOkSUOgJkc47Zv2pNoBQ38tjOcEbRk2PeFUFA52Q6NY98kw53h4IqY7Z6P4y
         8Tdqsc+YYpx8SuzaXgDQiWB9w5wc728pv9aq7vS+0pUWD9PCrYnE4z+PynXU4uVDZUcn
         L1ZVfDEtUQW8iFH2fduDVxCqYuAPnws1ediuleXOoSlOj/koKlMpzML/XJbYN0A8NnM9
         yPVRzGd7wUi3jTwf068bIcQK9rbyk6EJcTfunqE/pEXep+JjZLkddag8/7qUrjLEsTOP
         aeRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533zvoxVQRyO5H05Mv3ozd/BjAp8uagm09yGdgPx9yQd8ojRJiCS
	g98wJzp6thl7Z7xjVdiGcQE=
X-Google-Smtp-Source: ABdhPJz3jW6LSif6pYvqxg8RCsAcGv8ObyotcpJBptBJ8VuZVG9uHgg/+HitKg8IAmTdJEb90Ngi0g==
X-Received: by 2002:ac8:7d14:: with SMTP id g20mr326948qtb.298.1622732719037;
        Thu, 03 Jun 2021 08:05:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:554:: with SMTP id 81ls2183480qkf.9.gmail; Thu, 03 Jun
 2021 08:05:18 -0700 (PDT)
X-Received: by 2002:a05:620a:c0b:: with SMTP id l11mr33142qki.181.1622732718332;
        Thu, 03 Jun 2021 08:05:18 -0700 (PDT)
Date: Thu, 3 Jun 2021 08:05:17 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <fb43a674-d703-4b2d-ac74-3940e6ed2ba0n@googlegroups.com>
In-Reply-To: <3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77@oracle.com>
References: <AQHXUZvVoJiBY6puzU22V3vtdPYO9ar0oLUA>
 <06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0@oracle.com>
 <3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77@oracle.com>
Subject: Re: Submitting a change
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1028_1518779424.1622732717655"
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

------=_Part_1028_1518779424.1622732717655
Content-Type: multipart/alternative; 
	boundary="----=_Part_1029_248717230.1622732717655"

------=_Part_1029_248717230.1622732717655
Content-Type: text/plain; charset="UTF-8"

On Thursday, June 3, 2021 at 8:01:35 AM UTC-7 Anjali Kulkarni wrote:

> *fall. -> foll. 
> *Gothic -> GitHub
>
> On May 25, 2021, at 12:26 PM, Anjali Kulkarni <Anjali.K...@oracle.com> 
> wrote:
>
> Hi, 
> I am interested in submitting a change upstream for open-iscsi. How can I 
> go about doing this? 
> Also, is the iscsi utils on the fall. Gothic location, used on redhat as 
> well?
> https://github.com/open-iscsi/open-iscsi
>
> Thanks
> Anjali
>
>
> There are a couple of ways to submit changes. The best way is to submit a 
> pull request on github.
>
 

> Open-iscsi is at github.com/open-iscsi/open-iscsi. If you don't use 
> github, you could submit a patch to this list, though you must be careful 
> your email client doesn't munge up the patch.
>

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fb43a674-d703-4b2d-ac74-3940e6ed2ba0n%40googlegroups.com.

------=_Part_1029_248717230.1622732717655
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thursday, June 3, 2021 at 8:01:35 AM UTC-7 Anjali Kulkarni wrote:<br><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin: =
0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"=
>



<div style=3D"word-wrap:break-word;line-break:after-white-space">
<span style=3D"font-size:14px">*fall. -&gt; foll.</span>
<div><span style=3D"font-size:14px">*Gothic -&gt; GitHub<br>
</span>
<div><br>
<blockquote type=3D"cite">
<div>On May 25, 2021, at 12:26 PM, Anjali Kulkarni &lt;<a href=3D"" data-em=
ail-masked=3D"" rel=3D"nofollow">Anjali.K...@oracle.com</a>&gt; wrote:</div=
>
<br>
<div>
<div style=3D"word-wrap:break-word;line-break:after-white-space">
<span style=3D"font-size:14px">Hi,</span>
<div><span style=3D"font-size:14px">I am interested in submitting a change =
upstream for open-iscsi. How can I go about doing this?&nbsp;</span></div>
<div><span style=3D"font-size:14px">Also, is the iscsi utils on the fall. G=
othic location, used on redhat as well?</span></div>
<div><a href=3D"https://github.com/open-iscsi/open-iscsi" style=3D"font-siz=
e:14px" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://=
www.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/open-iscsi/open-iscsi=
&amp;source=3Dgmail&amp;ust=3D1622818912923000&amp;usg=3DAFQjCNH_piIoCOJK2g=
4PnQASsQWKBCgurg">https://github.com/open-iscsi/open-iscsi</a></div>
<div><span style=3D"font-size:14px"><br>
</span></div>
<div><span style=3D"font-size:14px">Thanks</span></div>
<div><span style=3D"font-size:14px">Anjali</span></div>
</div>
</div>
</blockquote>
</div>
<br><div>There are a couple of ways to submit changes. The best way is to s=
ubmit a pull request on github.</div><div></div></div></div></blockquote><d=
iv>&nbsp;</div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8=
ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div sty=
le=3D"word-wrap:break-word;line-break:after-white-space"><div><div>Open-isc=
si is at github.com/open-iscsi/open-iscsi. If you don't use github, you cou=
ld submit a patch to this list, though you must be careful your email clien=
t doesn't munge up the patch.<br></div></div></div></blockquote><div><br></=
div><div>-- <br></div><div>Lee Duncan<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/fb43a674-d703-4b2d-ac74-3940e6ed2ba0n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/fb43a674-d703-4b2d-ac74-3940e6ed2ba0n%40googlegroups.com</a>.=
<br />

------=_Part_1029_248717230.1622732717655--

------=_Part_1028_1518779424.1622732717655--
