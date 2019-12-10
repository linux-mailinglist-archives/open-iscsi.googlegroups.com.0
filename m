Return-Path: <open-iscsi+bncBCEJDZGXJAIMRYF654CRUBDQINEOE@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0E0118B76
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 15:48:41 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id g15sf6948411qvk.11
        for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 06:48:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575989321; cv=pass;
        d=google.com; s=arc-20160816;
        b=eAltDFjv6r54klHt7H8OW5AR0tSclldHjQZuYYYsCqLyP8mKJI1QJpSqOJrlzdxcdt
         dXTX8954Jb/twTHxsbDHH8p6HNw1vVMjPAT8tzXUoA8kiPLHXl6p3XZdQUWTFAGz4DdO
         +0MiUmIqUHcYKW0nQwgOTRoLToxtlnJrFfAkWxacWZc7CWVh5cs1XwS7W8whOqE9DC02
         xUUeif14L8u8NMkGf6GnS7QdMYtX43LWrV62jAJFu9ePoAd7d1f/ZZVDeHbruYj8s//r
         dE2BOMAjDPqMqiD9K6uhUBSvFw/2KXFzC5P7VR0kxdK2wkGdo9gOGmaet89g7UKBT8W4
         lhaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0exRWamr62likAVS/N/Iys4bYVykyrVNxR5b8rc9dto=;
        b=kKlU7dKq1Lv1vS74g7Yo582mR9UVxFYTVhL91FxL3oSloSakSHs/f5m77hdIju3g/T
         mswcFMAp/+eQWMjO/Bq5DQk7blMcVaRKmRron2v1w+whTG/7DHp8eI63HC2NGbeW4xin
         L+VHSytJJGEpoeIpMrxShSQHLrkGa59QA6JCkpGTVOy38cRm12E97k3HaWakBm+7pYw/
         0EfaLvBbxMI+3Vw+DucBiRGqgJ3H3QhSYO3uBBGsqESqL4wIR/FFJXFEMb/cs9AXn3a9
         ZsfkC14AlCvhDWiB+3g+s+ptPo+vfm087KWvtg5iu4K2P9/yVjjM+xc+IXj0brZbka72
         3LgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8q9Rfe5;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0exRWamr62likAVS/N/Iys4bYVykyrVNxR5b8rc9dto=;
        b=NXFXx5s3f80oLXl+hr5qEJjv5EpnWpUuLcdc1WtoJnmINxqxXP5KvKis3HNVEeoJVf
         qzRo94P6jk1BAP+9dLuzwqTgK2thQO9icWSq/U+lAvUOwSskmYNv1Om/3UzOdH1mqj7K
         3VqclHgunoiWJn1OgW5SDL0ivymDBIoaLjC8BLe6SrkLsYRJZR2Yd4QvTREQR5TaccXQ
         yv9NYrqnaNoI0u6tyD+eDQkvputwd+yTLxyEId51pJ5diYw6dPqoiA3pDLjdh9pfPOF6
         yL9i4n6iXik8BBfOKk2uykhyofM/M3Rm96vTLYNV9kccx/2/AUTBpNOzFr18wmYrO8Xc
         SZmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0exRWamr62likAVS/N/Iys4bYVykyrVNxR5b8rc9dto=;
        b=SybtkxdqZ9tM6oqsgEiW+CAf2ksgVojvn05KR6eStKDdaawPEuWKa2Epbjyo26erYB
         M5eztflqvJgV4UOoNOJ6STDd790ry5aJL/67ZCW9b+yqeHZRQasj6Nyjihnk4ceFcfp+
         8W4PoV2HUo0XUNNa4nrBIVvxFqGytDAeJg2kRtXYC3V5s7kgUmRLDZNtJaDW5QGWvQ7S
         4kIFZnsJjZ5do7qRInVQDvJRfLM6sLBSDBm44/zabX5InENT0RduIlQKUCIJnHogPKWu
         nIW2TbcKXanfFpchN9SBLtnqHLAu3/7fyuGAz57FQMX/QhalXtvsNgmkSYl2d3UkXTdM
         tPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0exRWamr62likAVS/N/Iys4bYVykyrVNxR5b8rc9dto=;
        b=JzIsR8AhqBJaOU+IWWhH9SxueZHSSyqMtd4kp1ZQoN5jNDCvsFgXbNItB0LbbtLbj2
         mzx7MtvkJfUDrvXQ1X0p++41ZTdrntAPl+1k3y44tScx6eYjf0DuPMXqUnhcMpUKfikB
         YIuqdCP5UP1LIsFPjAsG7c6vnmFFpRQTMz8/89i6KzM77tolYQxNlNke2tI9qxxag0r0
         7yYhnUsRcjEa+0J05n5Fn+lYIFrF7zbWXuwQT0nMogvPcHJp2XQhwg4xpk2tSFh8OMDc
         XZZoMeScL9426u1zXE1itfywpLr3pu3Sw/CySKGRip3brDMHpD2QQlPSIYeiYXQP2vYu
         N6Cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQDDcebooZnGhIC8Yk+GeTl4d+KCcR/qzEyb3rcO1Vq1D3Xy9S
	Ej2X4dlYmuqP9oOUhJnr354=
X-Google-Smtp-Source: APXvYqw1aXJIwf4bFc75JlUY2jDOzkxuuxIxR/m85TXWtP5Q34fefkHYw7pPWpA3N8fuZklUnisQQA==
X-Received: by 2002:ac8:6784:: with SMTP id b4mr13200299qtp.27.1575989320910;
        Tue, 10 Dec 2019 06:48:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:218b:: with SMTP id g11ls6271211qka.10.gmail; Tue,
 10 Dec 2019 06:48:40 -0800 (PST)
X-Received: by 2002:a37:9547:: with SMTP id x68mr34623399qkd.206.1575989320495;
        Tue, 10 Dec 2019 06:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575989320; cv=none;
        d=google.com; s=arc-20160816;
        b=nckRdtI4JpZDU1tbZtWUwMNBSSWsW5eMUDu7Z5+lZwpE7u0oO9ROtZR+mGOMLpVQMd
         nNBw33XVEIe26KgRmKRrKMZ9ORAOu9mntk6DQKKkv+7hD9ligaiwE/oWYUXh1vLVYoz5
         98KIGZL8GnyM8Cq2L40NYtFcpi8oBZnw9UJZCR9Cp6CpX6xcPt/RVuRrzvLPdQpKqnin
         sTmNcIxpRfDMTL2mL3jzO3bzfrg6xFKmBANbmnyvEI2P/Q1ZEOANkKQDdDIAbKdWfNKe
         CqwOCDS3GZLwxXSXXUjSeqAP+4/mzggvFtwwEnEr+aH9yyKGwgX5lVFLWN9rK0iLvICK
         wRtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=nzB6ROVX82u/ojkFz74o8OQQp3Hkbm/E6HKif8mNSRQ=;
        b=JUl2c77IBN434pP8u9Qex+F2PEFv6fHrRjD/XLGibevtmbRNhtIK8tKbvN70arYhX5
         f1SvSr4zh5iePPDEi/GkFwpthPiyxzfsqzGUpkCqyvEQPJ3NRMY88plEhbopsgIJ61wZ
         4KSv661PvVLMsnSVHVmHC/Xsv/ZJ/YOJ8IpME6XnUzCzXZyEyQMknOb1hacq07gs4wYw
         BmfCteF0t/23EiF2LEXb1kJY2S2VyvMq66DiYdEWsW/TcsVoPL5WAGG6ck/3Xxs3MRkE
         QtzAyrIxa7tkbrEUoxQyjB3YW3wFiI9WWxvhwgkT2KML7MZD+lYKb43Q3BMZvk0LUCY5
         oKrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8q9Rfe5;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id d16si105755qtp.5.2019.12.10.06.48.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 06:48:40 -0800 (PST)
Received-SPF: pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id j6so7646885ybc.11
        for <open-iscsi@googlegroups.com>; Tue, 10 Dec 2019 06:48:40 -0800 (PST)
X-Received: by 2002:a25:4192:: with SMTP id o140mr13898405yba.70.1575989319909;
 Tue, 10 Dec 2019 06:48:39 -0800 (PST)
MIME-Version: 1.0
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com> <5DEFAC49020000A10003598D@gwsmtp.uni-regensburg.de>
In-Reply-To: <5DEFAC49020000A10003598D@gwsmtp.uni-regensburg.de>
From: can zhu <zhucan.k8s@gmail.com>
Date: Tue, 10 Dec 2019 22:48:28 +0800
Message-ID: <CAGJK1Kk1LhxJHx0r9wVcfM4gjH8ypKnjHgu3Ne8cY_CcMkVhqw@mail.gmail.com>
Subject: Re: reboot hangs with "Reached target shutdown", who can help me?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000095480305995a9b33"
X-Original-Sender: zhucan.k8s@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d8q9Rfe5;       spf=pass
 (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b29
 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000095480305995a9b33
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you encountered such a problem? Could you give me some suggestions?


Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de> =E4=BA=8E2019=E5=B9=B412=
=E6=9C=8810=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=8810:31=E5=86=99=E9=
=81=93=EF=BC=9A

> Hi!
>
> I think the problem is more related to systemd, rather than iscsi.
> Personally I hate systemd, but you don't wnat to know that...
>
> Regards,
> Ulrich
>
> >>> can zhu <zhucan.k8s@gmail.com> schrieb am 10.12.2019 um 15:25 in
> Nachricht
> <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>:
> > os version:
> >
> > CentOS Linux release 7.4.1708 (Core)
> >
> > kernel version:
> >
> > 3.10.0-693.el7.x86_64
> >
> >
> > systemd version:
> >
> > *systemd*-219-42.el7.x86_64
> >
> >
> > Mount iscsi devices on the node(iscsi client node) and reboot os, hangs=
:
> >
> > [image: WechatIMG2178.png]
> >
> >
> >
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "open-iscsi" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an
> > email to open-iscsi+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> >
> https://groups.google.com/d/msgid/open-iscsi/372db1a3-424d-4063-bcdb-ccb0=
b821
> > df0b%40googlegroups.com.
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/5DEFAC49020000A10003598D%40g=
wsmtp.uni-regensburg.de
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAGJK1Kk1LhxJHx0r9wVcfM4gjH8ypKnjHgu3Ne8cY_CcMkVhqw%40mail.gmail=
.com.

--00000000000095480305995a9b33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you encountered such a problem? Could=C2=A0you give m=
e some suggestions?<br class=3D"gmail-Apple-interchange-newline"><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Ulrich=
 Windl &lt;<a href=3D"mailto:Ulrich.Windl@rz.uni-regensburg.de">Ulrich.Wind=
l@rz.uni-regensburg.de</a>&gt; =E4=BA=8E2019=E5=B9=B412=E6=9C=8810=E6=97=A5=
=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=8810:31=E5=86=99=E9=81=93=EF=BC=9A<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hi!<br>
<br>
I think the problem is more related to systemd, rather than iscsi.<br>
Personally I hate systemd, but you don&#39;t wnat to know that...<br>
<br>
Regards,<br>
Ulrich<br>
<br>
&gt;&gt;&gt; can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com" target=3D"=
_blank">zhucan.k8s@gmail.com</a>&gt; schrieb am 10.12.2019 um 15:25 in Nach=
richt<br>
&lt;<a href=3D"mailto:372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com=
" target=3D"_blank">372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com</=
a>&gt;:<br>
&gt; os version:<br>
&gt; <br>
&gt; CentOS Linux release 7.4.1708 (Core)<br>
&gt; <br>
&gt; kernel version:=C2=A0 <br>
&gt; <br>
&gt; 3.10.0-693.el7.x86_64<br>
&gt; <br>
&gt; <br>
&gt; systemd version:<br>
&gt; <br>
&gt; *systemd*-219-42.el7.x86_64<br>
&gt; <br>
&gt; <br>
&gt; Mount iscsi devices on the node(iscsi client node) and reboot os, hang=
s:<br>
&gt; <br>
&gt; [image: WechatIMG2178.png]<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; You received this message because you are subscribed to the Google Gro=
ups <br>
&gt; &quot;open-iscsi&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an <br>
&gt; email to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <br>
&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/372db1a3-424d-=
4063-bcdb-ccb0b821" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/open-iscsi/372db1a3-424d-4063-bcdb-ccb0b821</a> <br>
&gt; df0b%<a href=3D"http://40googlegroups.com" rel=3D"noreferrer" target=
=3D"_blank">40googlegroups.com</a>.<br>
<br>
<br>
<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi%2Bunsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5DEFAC49020000A10003598D%40gwsmtp.uni-regensburg.de" =
rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/open=
-iscsi/5DEFAC49020000A10003598D%40gwsmtp.uni-regensburg.de</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAGJK1Kk1LhxJHx0r9wVcfM4gjH8ypKnjHgu3Ne8cY_CcMkVhqw%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAGJK1Kk1LhxJHx0r9wVcfM4gjH8ypKnjHgu3Ne8cY_CcMkVh=
qw%40mail.gmail.com</a>.<br />

--00000000000095480305995a9b33--
