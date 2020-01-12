Return-Path: <open-iscsi+bncBCEJDZGXJAIPHJHK6ACRUBDMSWL4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA6A1384A7
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:28:55 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id n6sf5087800ile.6
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:28:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578799733; cv=pass;
        d=google.com; s=arc-20160816;
        b=IrbAwOvQLgA99xaQs+siFrU4H86YJRNuikqnGusDVziWD4Uk/nfylVkW763ax8eeuE
         0zxmrKbOtHQoBvq8jvJQWu7hwV7DKdkF3wx0s+/Y+tyTOlu7eiZlSEn5BxhpQICFZ2EO
         v7kQp4HJzA6YDTi31QfI64otOxispTbHbNK2ISMO06yFjU76q5oSOt0wh8USBAyEQkxj
         dDnp6U0BNtHrupQ4E/SjkeynHmLwe5tQuvkPW6G5G3mQMV6c9rGQZmXWs7nkco472Mmw
         5S7MN32NmFkVZ7e2xBdqhuGoC1zNUMAPkLDfgZGmJvUhej7lsad4w/9sH7kbSpr1kij6
         3g6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vIdPnLg5YSu7FE5N25mhvwijGrIP4uE/FVywovJ98yE=;
        b=vSBa2ew23yYtKKoWLEiYxjAPgL++6IrNrowTvWXdXE8po0RD751FKSgs/Qhqmwioxb
         99uGblNybYsrkXo1uT7XKN2ybtdYU+8MawrUv62cu3XnjBSMR14dfOL3vNdmQzOIRb1f
         Z5C5gsZTitVpxcSo8KQT4VR6ovdBJ7XKSp3yMsDHXWiZX0Sw9SN6G7+qkFJs9rU5MMv3
         6y/12CqT4GrjqlWSQrA+DcQit2rPad3kDdvLUXA75BrmBgzs7xup2MHb5YSYLs5z10rq
         nnD6kYBg+sPwwDsp+UAu7FpabATRAbaIvZxH29dlccMIjK+sUtieMr3pqUzIpaSNbq4B
         w+JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rL6Xaame;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::c2d as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vIdPnLg5YSu7FE5N25mhvwijGrIP4uE/FVywovJ98yE=;
        b=oEARemG2xOzG62bXWQPjNdMz1klRb4r5dBKxkFDquZOag+Q09urhW4gUms34MIiSE5
         XZ1UeMYeK9+V6mAiVPgtOhrDXGS4lRX3AOEdq3IX2BwN5rZd76BZ0JdEu+GvB8bwgquI
         yaEcDrJQ5zj3JrImy+aGKLtiWj1eEzYmUh711apQo8dKVTkH5SchM+TJC1c8MQ9vWaeD
         S5aCH2EI6L4IIfAzYxSxbMp7n1lmC8FlUoLItij2/l60a6bpc66s244LTSSpR4lBOTnJ
         auWsLyqUQtIGuRS+4uSTI4LJhZQ2dZrI55Mf1LZ19pJYb8Lcznz2iD2oLzygWZnNvlib
         IeCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIdPnLg5YSu7FE5N25mhvwijGrIP4uE/FVywovJ98yE=;
        b=rZWbowTJ6rvyBJ9H6fDNBO22kaHlNlsH4XzrnLF1/BfGXH0cZsIf3To0RFdTfPogCH
         apteNCcZaoNBzMOEqmLSNVbljN8CDJyQjKlW9qUJn58izNLU0S1qlOcFEZAb/0bLlkYL
         8dPOo2Ebp7TbvhTcbOPHms6V7sDoA6LHs8/DVyXmlve5nIewjjgQ/4cJgcObiUSi1rvH
         gnbD8LlpHOE3zMeITHDAtofSnxZxRrfYHu4SAFORZ2YI8lKZ8ASaC9RbFsYCPwsIKXyT
         yD5zklvX5pWRQY2fgAqKHGhRz+H+HDWpwbTAVXxscam5A0vOvPzR4xdYx5YQN7Wh8Aid
         6XiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIdPnLg5YSu7FE5N25mhvwijGrIP4uE/FVywovJ98yE=;
        b=d5kGPgt9J/OieJXMosL2lbuouPXbFNss0JPEIeFttOnez9UjiV0/SzThAhZLYYtNtd
         wffkXafeqlFdy5sJqluX8c1T5+u+CVKM4LS7RWJEqGWIwqtp5fpICWx4hcC1P4Fapwsz
         6lnaZEYemMzDhG4mX4PZUD1LiZAaDMcEqG3a4BGVfxdsQzd8k5GMcG+K0THXzvSNzVKc
         GhReNOVrTqZZPvceV5LiIaMhfDlx3bupIHEtecZn4o/K+XVaLUspKBncBmG1iP0pawxV
         9xRscOykLU1rtqBlwGgQzRQ0FFOtg2ubnZigRYPho4F622cUb4RClGXTz/U8jttMzvl0
         TPtQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV+r75YLailpjTaZFhnHLjeV9oVPsObKh6yyl2QyAEIwQQvGsgs
	93tdaooiI3ySaT2coqBf4fw=
X-Google-Smtp-Source: APXvYqxK/W1wuCFNkIOJDlaVrRoCaCE5ozkeuleQ6QPZ6c4LYkOOuD6gQ11pGN8M2hPyd3ELD3E09Q==
X-Received: by 2002:a6b:8ec9:: with SMTP id q192mr8715438iod.237.1578799731331;
        Sat, 11 Jan 2020 19:28:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:5c56:: with SMTP id q83ls1523710ilb.0.gmail; Sat, 11 Jan
 2020 19:28:50 -0800 (PST)
X-Received: by 2002:a92:5e46:: with SMTP id s67mr9644324ilb.162.1578799730681;
        Sat, 11 Jan 2020 19:28:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578799730; cv=none;
        d=google.com; s=arc-20160816;
        b=l/tO12Lg+wXYhlpQabct5iLtjruN+2UvhzZ2FmbdPWjUAtXX5ELUm6hvyyUxLAYDLk
         fCrjQ82PFohuA8K65rA0GiM2plzTZGLFN1kyPBLoQDdx6tEC9ZpxcVE+Gk+Fi5AFgc5e
         muRQISjn4KbnxWZAl6XjyEsKlfu9xTlNiAXvz8cT8D60ATACVQJxXWiGH0ZyQHkupeph
         6ZaU8F8b9Or0UDw/PJ+UZoViYTTmwBJV7Wz9pJq2keVY6WOTHeQ3Jueg/jeEFah95SUW
         m4FzM9iQY7HVSvPwTtVfzIq55ZjXk0WtvTAaJkbgogGdUY9SEFJbiZQF/7I8J5hECb6c
         ZK/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=/PDfpiOBWIQRGcnVwHQ/061FlpYVco8M6oqp2WRnCIk=;
        b=LMphWlx35w/tddwN+e3NL6Mhnvv15FUyybFvwyidyffpfol1dt5n6DtJ++rDR2PvGk
         WMJM/RT//ieh7ca/QwTdCJ0U0eyNwdu8dfJFDRSch3X77xIrqg/NzmI4rzaaMftacd7P
         gXnvv0QYfD5RzG0bWzK4IMaHJ9/azbw9Vto3iF1b3kylyt9OajTrG4JqqSN/tTSI7pl6
         npu8cJDur5zs+/96RMnd9NJWbfyHApN+UrpGjP1jPzFnLnjWIgYKFliEHQkjwdxsp2V6
         J2l5cuhbC/odyWbwGN9YfrlCM2ieFttstdJCOs80UKNseYjRUHk1bT/xN4rFCUxlQFkz
         kcAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rL6Xaame;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::c2d as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-xc2d.google.com (mail-yw1-xc2d.google.com. [2607:f8b0:4864:20::c2d])
        by gmr-mx.google.com with ESMTPS id h4si318747ilf.3.2020.01.11.19.28.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:28:50 -0800 (PST)
Received-SPF: pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::c2d as permitted sender) client-ip=2607:f8b0:4864:20::c2d;
Received: by mail-yw1-xc2d.google.com with SMTP id l22so3303134ywc.8
        for <open-iscsi@googlegroups.com>; Sat, 11 Jan 2020 19:28:50 -0800 (PST)
X-Received: by 2002:a81:3785:: with SMTP id e127mr8807449ywa.188.1578799730167;
 Sat, 11 Jan 2020 19:28:50 -0800 (PST)
MIME-Version: 1.0
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com> <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
 <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com> <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
 <1EB02856-CF99-4B41-A6B0-7A89350162E3@gmail.com>
In-Reply-To: <1EB02856-CF99-4B41-A6B0-7A89350162E3@gmail.com>
From: can zhu <zhucan.k8s@gmail.com>
Date: Sun, 12 Jan 2020 11:28:39 +0800
Message-ID: <CAGJK1K=VYnVrTy+Gync5o2dP+_afwMSdP3-SRgTskz8Q-MPOUA@mail.gmail.com>
Subject: Re: Who know more about this issue for iscsid?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000016934a059be8f578"
X-Original-Sender: zhucan.k8s@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rL6Xaame;       spf=pass
 (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::c2d
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

--00000000000016934a059be8f578
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the initiator.

Lee Duncan <leeman.duncan@gmail.com> =E4=BA=8E2020=E5=B9=B41=E6=9C=8812=E6=
=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8811:16=E5=86=99=E9=81=93=EF=BC=9A

>
>
> On Jan 11, 2020, at 7:15 PM, can zhu <zhucan.k8s@gmail.com> wrote:
>
> Hmmm, I use the default config, I hadn't do other sets for it.
>
>
> For? For the initiator, or the target?
>
>
> =E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 U=
TC+8=E4=B8=8A=E5=8D=8811:13:31=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=
=9A
>>
>> On Jan 11, 2020, at 7:41 AM, can zhu <zhuc...@gmail.com> wrote:
>>
>>
>> I did not set the auth.
>>
>>
>> Please share how your systems is configured. Did you set up your targets=
?
>>
>> Assuming you set up your targets, and they are on targetcli, can you
>> share your configuration file?
>>
>> Also, can you ensure you have no auth set up on your initiator?
>>
>> =E2=80=94
>> Lee
>>
>>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/1EB02856-CF99-4B41-A6B0-7A89=
350162E3%40gmail.com
> <https://groups.google.com/d/msgid/open-iscsi/1EB02856-CF99-4B41-A6B0-7A8=
9350162E3%40gmail.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAGJK1K%3DVYnVrTy%2BGync5o2dP%2B_afwMSdP3-SRgTskz8Q-MPOUA%40mail=
.gmail.com.

--00000000000016934a059be8f578
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For the initiator.</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Lee Duncan &lt;<a href=3D"mailto:leeman.=
duncan@gmail.com">leeman.duncan@gmail.com</a>&gt; =E4=BA=8E2020=E5=B9=B41=
=E6=9C=8812=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8811:16=E5=86=99=E9=
=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div style=3D"overflow-wrap: break-word;"><br><div><br><blockquote type=3D"=
cite"><div>On Jan 11, 2020, at 7:15 PM, can zhu &lt;<a href=3D"mailto:zhuca=
n.k8s@gmail.com" target=3D"_blank">zhucan.k8s@gmail.com</a>&gt; wrote:</div=
><br><div><div dir=3D"ltr">Hmmm, I use the default config, I hadn&#39;t do =
other sets for it.<br></div></div></blockquote><div><br></div>For? For the =
initiator, or the target?</div><div><br><blockquote type=3D"cite"><div><div=
 dir=3D"ltr"><br>=E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=
=9C=9F=E6=97=A5 UTC+8=E4=B8=8A=E5=8D=8811:13:31=EF=BC=8CThe Lee-Man=E5=86=
=99=E9=81=93=EF=BC=9A<blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 style=3D"overflow-wrap: break-word;">On Jan 11, 2020, at 7:41 AM, can zhu =
&lt;<a rel=3D"nofollow">zhuc...@gmail.com</a>&gt; wrote:<br><div><blockquot=
e type=3D"cite"><br><div><div dir=3D"ltr" style=3D"font-family:Helvetica;fo=
nt-size:12px;font-style:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;text-decoration:none">I did not set the auth.<br><br></div></div=
></blockquote><br></div><div>Please share how your systems is configured. D=
id you set up your targets?</div><div><br></div><div>Assuming you set up yo=
ur targets, and they are on targetcli, can you share your configuration fil=
e?</div><div><br></div><div>Also, can you ensure you have no auth set up on=
 your initiator?</div><div><br></div><div>=E2=80=94=C2=A0</div><div>Lee</di=
v><div><br></div></div></blockquote></div></div></blockquote></div><br></di=
v>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1EB02856-CF99-4B41-A6B0-7A89350162E3%40gmail.com?utm_=
medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://groups.go=
ogle.com/d/msgid/open-iscsi/1EB02856-CF99-4B41-A6B0-7A89350162E3%40gmail.co=
m</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAGJK1K%3DVYnVrTy%2BGync5o2dP%2B_afwMSdP3-SRgTskz8Q-M=
POUA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CAGJK1K%3DVYnVrTy%2BGync5o2dP%2B_afwMSdP3-S=
RgTskz8Q-MPOUA%40mail.gmail.com</a>.<br />

--00000000000016934a059be8f578--
