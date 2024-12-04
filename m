Return-Path: <open-iscsi+bncBD54HHNYIIINVDOCXIDBUBDUOOKVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F439E3FFE
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Dec 2024 17:44:15 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id 2adb3069b0e04-53e20afa448sf234280e87.3
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Dec 2024 08:44:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733330655; cv=pass;
        d=google.com; s=arc-20240605;
        b=dm2ermpGztqlB5cUUSnexgAdwHPt2CfsZVsHzPSYlXy+MXJeRiKYPY0Fx2eFgFBrmQ
         5Hop7QsyChh7pzwAsVYU5QFsy0Z7uljVSvg2/OHtICAPGcXSn75apf10f5ngemaeTIb3
         RNkvj8+9l5PoyKw2hIFroOFm2vugE/wZwiLeiQprzX73rcXrIHXLb6SwmKDLTKBs2Lbu
         iFdW7swtM090P7gCWfmWdN8DrIYwQknzLb3KGYp+3nHhgV/kcGonf8KKl2n+OdJq0Jun
         g4MEfeXbiKqN9dErG84EmeDJhF90hzDdSZOtcCnbfuwQrDB4pWKrCFreP1G+IAwU7yzp
         BK2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DQhWJXoa53+rvKwg9nWKW3zqQTBgVx+ANGBoTCl2auE=;
        fh=2Rb/gqMDCt5Mexrlki4JnlIfU9PTfBdcNt7Oxpysn/4=;
        b=bLnrG4fGfg/fxf5GzFUObmPSjzn4gmsIUvgmxpa2udw09aES4b9oQ88g3pD2ah8n1s
         2IO07EVulv5SQNRq8Ri9vD8f9+LQfVSVSPCmkfPETKeyNE7p7D1/FShajOwYA3NxTdEH
         l4lcQ1DGlK4SDO1NW0EZgVt1V3jsGwKNHqWLxXS6k0f7MSpmBBsDWrnYOo3ILQB5vUw3
         4k5XaLzOoQIEzCGRWdJ+r0QdgkTKidhR0yIf1k/IRO6c9YSee558a3JwnzLY5h70LlDA
         0D+GMAQc9N9dC5SFJT4BVQ6I3HEB8wVZitGmy1EMfhRIf9B1GuI1twgYI6jccQ8d7oZT
         jBsA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=LaVHncbw;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733330655; x=1733935455; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DQhWJXoa53+rvKwg9nWKW3zqQTBgVx+ANGBoTCl2auE=;
        b=IBHlx/xqLgDhy+77Qd+zBCWeA+6r1omVvXvUFcK0UA3I1ZZfPzfURaik7rK8BAgWWk
         4Xf89/koeyAqElcjbxbnxHw+ZhB2sXCf7GD7Tbl4u824GxD0inZAVLXzkTTxRUxY+xPT
         1+MKu91WkpFJ7LZAvZZKYTJoNGdCWnRa3BpGn8HAqojtz8pFnapeRUPxAlj/X5TQSuCc
         Zc/RoH60HKWWZYYLX43urS8X2LH5fCKdQjENLn0au4KVojlozcQODjeC4jgkXtE8eSHV
         ivFVFACMY0mw3XNxE8eku0r3oV5dgotsEpj8kMxzsGbaMPYNMsiPyQWIb3EnuRQ+MDZ7
         7IKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733330655; x=1733935455;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DQhWJXoa53+rvKwg9nWKW3zqQTBgVx+ANGBoTCl2auE=;
        b=Qefctbiv0n2rK4SZw8e+UL1KivPmiAP9WRLkzmfl2Ar9+0mmUPE9pRRnWIb1BZx/5k
         qpdsVDicAoiOgXh3oGfmuPO3a+LUusWhDtGq+duoAk8SDtjT17SNxVwdZGBfww6E3A84
         nmS6SXdvWcLG5vzZBrrYOqPmXZK2tKA5ukoNysCwsn+c1Xqg7T+Je+Pk/NgRAydW/DPu
         VR/onLIp7EeLf/Xfnc9DjQjaFMVD8fYr4HUi9FRXw2Yjm+XC023BaubILW0dXeLKoft0
         Q8DSTXHFK6niLpIuP9DpkWENiQmdmjIuWIW+9k0aF+RiGMaMKeod4+VZmsz1/f7o1n2L
         Wnsg==
X-Forwarded-Encrypted: i=2; AJvYcCWkccaA4yyH1u4by/RwnTtB2wGRupEBer+RSzaGPMbJw+9Pn/cYBSGS67NoKHIbGLx96Ix04w==@lfdr.de
X-Gm-Message-State: AOJu0YxIKgU+/18Rmxx4ZRgJgQ3vIjumN4tfnYcwTdeFH8yLa1o1gxyl
	mOW8jpxzyO8cBzHfk1el3GHdjVstNgRRLRsb1WOg2rZ+YIEfIYSb
X-Google-Smtp-Source: AGHT+IFnd+VoJoJyEtNEuMdkia2ToJXhxq3xSS8uYpFhalvLqQIJuc+yGQI9Tud0jKAn8FH65Eufrw==
X-Received: by 2002:a05:6512:33d0:b0:53d:a132:c68f with SMTP id 2adb3069b0e04-53e12a2e4cdmr4848414e87.47.1733330653669;
        Wed, 04 Dec 2024 08:44:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5a5e:0:b0:53d:f718:9aa6 with SMTP id 2adb3069b0e04-53e208bee13ls172201e87.2.-pod-prod-08-eu;
 Wed, 04 Dec 2024 08:44:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWCBRiZ/yjWOna2MSTbXBmoLAbMkMbtbwwj5vVYj8eSlTIemBf+o2/voK+/QFGQN1u8n+yIRSyHdCQi@googlegroups.com
X-Received: by 2002:a05:6512:3f2a:b0:53d:a58c:c5a4 with SMTP id 2adb3069b0e04-53e12a22f0bmr4295155e87.40.1733330648156;
        Wed, 04 Dec 2024 08:44:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733330648; cv=none;
        d=google.com; s=arc-20240605;
        b=X38GSemcBsb/yW1pTJ3EA+tMU76p7LNNZhM9/3x51Kxu5FEUOko2RcdMR/KXZylr5q
         4s4RFZpB1B/JBxe/p8SSxEMBN3l7YDUEcGtE88c/AM/GMkFsUeEPCa82j4iUUolKy3RR
         0PcUrWju3X+40hV4K+89D93kUIb87C8qWyaKf5N3k7smJ4lybfaMkb/suveFmpAG3836
         NHSMIvosCLqnwR5QumqvUwq+4K4sew+0H3GYdFgWEZCsptB0xwyCHPEwlRSAal0NZ21t
         RKW/vq6xVnj9VPUsTMOH2UnTRIee3DWenHxFflBU/54b8ICNGC/+rD4pUa7XDysfyf0r
         O7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fa6jUu+noFgtSjC6ftw9CwjmLFhR8E5auyn+PGMC2Gs=;
        fh=cV1cHyuynKY1YoYDLef69DOEXWONubgIYFQgkLLuw/E=;
        b=HbSrgz3PFbb6wVRj/QTKMmkGi2cOkld4utR9LPY+OZi7B0XWnDNCMtfYXhrLoDeXS8
         cCpbyBkld70zDFJO277XEoqSytOdjJkyH1hTK83wIJIp9czPeBOhToWoFkgp5k/088D8
         VtefA++qW1mMhuTbqoox0FyvAtVpHTzY2Zwad21wUC+4I/aXeyy6rCaMHPZyUVJE4GCU
         uGtAx59VaYLNOkogfAz1UrgmCEVLApzHp3rEn1e5p6VUH5tS/vneJNCMA5Io3M3UbF/G
         hZJinjDZzzV2tq/4UYrVwWkG6hXhSZhixv9cYRaawBMgE+sIXGZQJc93bxCwPM3HY9di
         Oxzw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=LaVHncbw;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id 2adb3069b0e04-53df646f489si231285e87.7.2024.12.04.08.44.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 08:44:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a9a68480164so928077966b.3
        for <open-iscsi@googlegroups.com>; Wed, 04 Dec 2024 08:44:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVqHfwCD7vFIPmqC72hrQHUXZ6zQAMkyWdIgUJGpT7r0h7u/xQG7p7uVQ0vJi7UQ7ZXlWDrPDx6OClU@googlegroups.com
X-Gm-Gg: ASbGncsXfEljibvLAnXT31kuILUJ9Zcz+9snNcU5sATkfIyvMm6SORgUCO0VcaAIsN1
	XqIUqu9tI/jcd54yzonYLWQe08Lv6lfl5
X-Received: by 2002:a17:906:23e1:b0:aa5:2855:7817 with SMTP id
 a640c23a62f3a-aa5f7d9c7a9mr549674466b.35.1733330647515; Wed, 04 Dec 2024
 08:44:07 -0800 (PST)
MIME-Version: 1.0
References: <20241117194604.13827-1-leeman.duncan@gmail.com>
In-Reply-To: <20241117194604.13827-1-leeman.duncan@gmail.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Wed, 4 Dec 2024 08:43:56 -0800
Message-ID: <CAPj3X_XGg+vT35aHVmxYONVpcjadAE6eSsa=nuUwP-+KHybiFw@mail.gmail.com>
Subject: Re: [PATCH] scsi: iscsi: fix sysfs visibility checks for CHAP
To: Lee Duncan <leeman.duncan@gmail.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Hannes Reinecke <hare@suse.com>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.org, 
	open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008610760628747d95"
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=LaVHncbw;       spf=pass
 (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::630 as
 permitted sender) smtp.mailfrom=lduncan@suse.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=pass header.i=@googlegroups.com
X-Original-From: Lee Duncan <lduncan@suse.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--0000000000008610760628747d95
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ping?

On Sun, Nov 17, 2024 at 11:46=E2=80=AFAM Lee Duncan <leeman.duncan@gmail.co=
m> wrote:

> From: Lee Duncan <lduncan@suse.com>
>
> The username and password checks were backwards for the sysfs
> visibility checks, so correct them. This likely went unnoticed,
> since the visibility/writability for these attributes
> (username/password and mututual username/password) are all
> the same.
>
> Fixes: 1d063c17298d ('[SCSI] iscsi class: sysfs group is_visible callout
> for session attrs')
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c
> b/drivers/scsi/scsi_transport_iscsi.c
> index fde7de3b1e55..81c57e0e8d90 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4587,13 +4587,13 @@ static umode_t
> iscsi_session_attr_is_visible(struct kobject *kobj,
>         else if (attr =3D=3D &dev_attr_sess_chap_out_idx.attr)
>                 param =3D ISCSI_PARAM_CHAP_OUT_IDX;
>         else if (attr =3D=3D &dev_attr_sess_password.attr)
> -               param =3D ISCSI_PARAM_USERNAME;
> +               param =3D ISCSI_PARAM_PASSWORD;
>         else if (attr =3D=3D &dev_attr_sess_password_in.attr)
> -               param =3D ISCSI_PARAM_USERNAME_IN;
> +               param =3D ISCSI_PARAM_PASSWORD_IN;
>         else if (attr =3D=3D &dev_attr_sess_username.attr)
> -               param =3D ISCSI_PARAM_PASSWORD;
> +               param =3D ISCSI_PARAM_USERNAME;
>         else if (attr =3D=3D &dev_attr_sess_username_in.attr)
> -               param =3D ISCSI_PARAM_PASSWORD_IN;
> +               param =3D ISCSI_PARAM_USERNAME_IN;
>         else if (attr =3D=3D &dev_attr_sess_fast_abort.attr)
>                 param =3D ISCSI_PARAM_FAST_ABORT;
>         else if (attr =3D=3D &dev_attr_sess_abort_tmo.attr)
> --
> 2.43.0
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
CAPj3X_XGg%2BvT35aHVmxYONVpcjadAE6eSsa%3DnuUwP-%2BKHybiFw%40mail.gmail.com.

--0000000000008610760628747d95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Ping?</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sun, Nov 17, 2024 at 11:46=E2=80=AFAM Lee Duncan &lt;<a href=3D"mailto:leem=
an.duncan@gmail.com">leeman.duncan@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">From: Lee Duncan &lt;<a href=3D=
"mailto:lduncan@suse.com" target=3D"_blank">lduncan@suse.com</a>&gt;<br>
<br>
The username and password checks were backwards for the sysfs<br>
visibility checks, so correct them. This likely went unnoticed,<br>
since the visibility/writability for these attributes<br>
(username/password and mututual username/password) are all<br>
the same.<br>
<br>
Fixes: 1d063c17298d (&#39;[SCSI] iscsi class: sysfs group is_visible callou=
t for session attrs&#39;)<br>
Signed-off-by: Lee Duncan &lt;<a href=3D"mailto:lduncan@suse.com" target=3D=
"_blank">lduncan@suse.com</a>&gt;<br>
---<br>
=C2=A0drivers/scsi/scsi_transport_iscsi.c | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transp=
ort_iscsi.c<br>
index fde7de3b1e55..81c57e0e8d90 100644<br>
--- a/drivers/scsi/scsi_transport_iscsi.c<br>
+++ b/drivers/scsi/scsi_transport_iscsi.c<br>
@@ -4587,13 +4587,13 @@ static umode_t iscsi_session_attr_is_visible(struct=
 kobject *kobj,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_chap_ou=
t_idx.attr)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 param =3D ISCSI_PAR=
AM_CHAP_OUT_IDX;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_passwor=
d.attr)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_USERNAME;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_PASSWORD;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_passwor=
d_in.attr)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_USERNAME_IN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_PASSWORD_IN;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_usernam=
e.attr)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_PASSWORD;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_USERNAME;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_usernam=
e_in.attr)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_PASSWORD_IN;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param =3D ISCSI_PAR=
AM_USERNAME_IN;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_fast_ab=
ort.attr)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 param =3D ISCSI_PAR=
AM_FAST_ABORT;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (attr =3D=3D &amp;dev_attr_sess_abort_t=
mo.attr)<br>
-- <br>
2.43.0<br>
<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/CAPj3X_XGg%2BvT35aHVmxYONVpcjadAE6eSsa%3DnuUwP-%2BKHybiFw%40mail=
.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/open-iscsi/CAPj3X_XGg%2BvT35aHVmxYONVpcjadAE6eSsa%3DnuUwP-%2BKHyb=
iFw%40mail.gmail.com</a>.<br />

--0000000000008610760628747d95--
