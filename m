Return-Path: <open-iscsi+bncBC755V5RXMKBBWE55LYAKGQEXGCZJYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id AB03B1384A1
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:13:29 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id e128sf6577914ywc.3
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:13:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578798808; cv=pass;
        d=google.com; s=arc-20160816;
        b=c6Z2boaa52CfnVpLwrCsrc7V1BbTg/Venpr66Es6PkmP1iHJJGJbKVCqpI3L/NNdJU
         TIFCelbG9/IIANNf9ySCd46GiwSPix+oEgcqim61412KvAnyy/sl4+NTcBDeSjt1/swm
         AyuG8IE+G3Bswcx4m223vuYQWv2kJr7AlxyQnj4ijaIp6Sr8a5b0JBKRs8Yn7ob6XoIU
         RTZ5zpf/6pItWBrROaTo5MGECyg4E30fomrkK0k+rC8RtcHhIUM9ZZVKm8Fok3KypA7L
         Dn1kLUlPL28ZEnTzdX7xqWxZ+cYxcwkOj/w4o25Z0qJnqyx+myNqG1vhN1viGX8kedNj
         gMPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=8w3GQ9IfhQ60Z38+YHfzHtmY+Z9W3M8A70wbOZ2D18Q=;
        b=HDYmKq6LPuki5+FpL4r0Mg9GLh0jZ0TuNmctKxhO3f+KGUq4b0/0JpgB+7lLR2/TuV
         OCytAOd6ZO3uDWC65o/TSaQM7UkA6MR/nZQ2alSsyPQ2Z6cybrpubExqBBLuGlGao/Q+
         eAOFRhsF0S2Qqgyz2xg/C9QJNTUVlcY8BcW3viVNugXViM2CD2b3WH357D000hIelcFA
         1DhiYNdrN2AEIexnFqhuD2ALI0OYLH6Bzgnmca/n4WvxFwP69J2HSG/mEoWAEhcMDv8S
         1/JStn8tURfZzTbjl8arhLZhT3X8d6yw0bOow0PkEnOOmi/TSQfZtGik7tqU9/tpK9Qk
         Se/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6pOicLT;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8w3GQ9IfhQ60Z38+YHfzHtmY+Z9W3M8A70wbOZ2D18Q=;
        b=WdLJypDBraB6A/+e5Grq1DoxNSZIXtU4aLngBAdvW42SYoUmERNY8WO/IZEDhMZxM4
         UwEJUeEhxQrlRHK1BvTU6GWBMULZJNKwk2RKzCnfBO0pPcxQLTfq4I6rM7rpw381fimX
         RKGMjCd4M99qH3rUzN8m1vj0U2OOAbOkYgSGaTJF0fS4MXU4yw6EvE9cq3NkpyPd5s2t
         lk5/XhneYpbyXi4E0eyf0k6LSxADFtxhUZUZakYM63c6fEUyl2dZE46pARE6+qSRGKP1
         9ZmTwnV/agApd2a+wo3+PY6gw9HNn7DWhDPhwLJUtWK5+DOVxkfK0B0wvPmZBnLIAnZ8
         n50w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w3GQ9IfhQ60Z38+YHfzHtmY+Z9W3M8A70wbOZ2D18Q=;
        b=ae/V6sfx6KBabiZ437k53RTEH387zggUOD5SeFUzgYqZ++wVHLkhOQCtaDgYwcsPFQ
         lteh12/IltJvCTuGEx/3yiXUPJ38FgBvtoZ0kjq2yC5H82fsZ7Gk2RYRkXP8NUy9lvgS
         Gm1dra97nn5tNIIYytn3naqh6ZTPA0YNEpT7NL8kuKSZVLSIZrBuoT3xSdqQOJCvACB7
         N6hWdJIAYt0b2nh8OBWjjZj8A998hQJ9sIsR7tzxEi+qYLeV/i0s3Er1dEDj7NXMxmNE
         gGtP6E7x8z760aANtth58c5XjgzgDuVKJS7z/3Y+r/Wzp2k407ILVLmkhTX2TbGXaasG
         1OEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w3GQ9IfhQ60Z38+YHfzHtmY+Z9W3M8A70wbOZ2D18Q=;
        b=dGG3jT+5qDAIkb79uRiS2iVa/8ncggoyEvc/nrbO/18fM0V5Bz/mi/ttf7cAA+1dmh
         jDas6XkRFcAAQxD3Qj/GovNDX3T5+605aEqwelzfQm910u0AGWWO5zp8J6U8s1GYMjkp
         fx/aLoz+4EG+WI1JlgfTVsOSpx0o7m5cN7ZWle52gs6rVy+D4LW9RpQ5052SrPy8dkGM
         NFRLEATuliZMfOobdbmhEwMm1DdCgPoqTchQqislBb0TJAXoAR4hqr9ZuefG4w+G1xQp
         xdQ4c4I305oGRF/wLJdpevr4cyFhMBhPVlkSPkJE9li07SfMbS7UOCP8wk+EpcQJTFV7
         9law==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW2rl1Ws/xsBBqD08NE4oohxZ5i6Jd29ItBXDY+3PSXoHqIOqSH
	uz4WwZwnZTlAlpaC/YkGYvU=
X-Google-Smtp-Source: APXvYqxfMXuLzDbjwWNUbrMPVf8zoFSXYS+5zlPr6VWJHtFYsKdQSsrUwzmY7JUS43HMvVgF1Ljg/w==
X-Received: by 2002:a81:a691:: with SMTP id d139mr8307361ywh.450.1578798808646;
        Sat, 11 Jan 2020 19:13:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d08f:: with SMTP id h137ls1436638ybg.10.gmail; Sat, 11
 Jan 2020 19:13:28 -0800 (PST)
X-Received: by 2002:a5b:4d2:: with SMTP id u18mr8895879ybp.109.1578798808146;
        Sat, 11 Jan 2020 19:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578798808; cv=none;
        d=google.com; s=arc-20160816;
        b=ewsohGLyu/cQUgDRplDSij5/FK0G6xhniBQRJod8I6IotOKYy6wfAFnaWLjPEih+Yw
         9P4rls/OmV39qL/R5HMTV+b2Fv8dG+3G2wFsmrcAIxIT3fEZzsgFwKTtAdwntqQWa5zf
         4mEiqyxZy/ceGTxBjeNUqjH5hh9LwMZvpQyhcFWDOUpP7bHX6I6fgkc6pesOhxrLEDcM
         MFh5L4Rq7CseowlxbvnwrUspVq/wFFzNWQwwoVcM0W0+sQd9yelBVhzWUt0ks66yEZXq
         mFrBTbl/YiLYajAbAczyy8veRFsF38mA9D4tyYLaY53hMWYUk8yFv2fRYMJwCLoUzk3D
         RAAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=hYDydiYz4u+jaE1StQbq/9AyAZ/5k2mliwO6QV7cKDY=;
        b=JDs68jsvgSwFhlzZA/xk//mmmyxUlMxVVlO2kRhmiqbr8KdEf0BudGH5QAGDsa2Wfg
         kXstFan0PY39rXGJ5zV/VtvGzKLUnGWiVwJmgS8uxE2vwJiPF3qY1huJ4GIZsFil680w
         5xaoDuev3tnVCWA7k7iPVLKdRyM2TM8/OtCo3Ga/lT2LIUyZGXJiQwMm1CWkB3sZYBDT
         cD9Vd1DEPeqbybsjtt4nVgdD2Ka4TDTCizD6d1z+5Oa58F13/6n4haTD5cUJLmASpRM+
         UKQtGjE4ILd0CSTRUoiVka4hAIvixT4SAK7IATjfdDJTPwpScbJ4OdCdxCCIKBdrKAXk
         RW4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6pOicLT;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id n67si405823ywd.3.2020.01.11.19.13.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id x6so3122261pfo.10
        for <open-iscsi@googlegroups.com>; Sat, 11 Jan 2020 19:13:28 -0800 (PST)
X-Received: by 2002:a62:e30f:: with SMTP id g15mr13163077pfh.124.1578798807203;
        Sat, 11 Jan 2020 19:13:27 -0800 (PST)
Received: from ?IPv6:2601:1c0:5400:d::3? ([2601:1c0:5400:d::3])
        by smtp.gmail.com with ESMTPSA id d2sm8106571pjv.18.2020.01.11.19.13.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:13:26 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E9B55AC3-7D07-43DE-93B6-77CCB2758D69"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Who know more about this issue for iscsid?
Date: Sat, 11 Jan 2020 19:13:26 -0800
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
 <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
To: open-iscsi@googlegroups.com
In-Reply-To: <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
Message-Id: <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K6pOicLT;       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
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


--Apple-Mail=_E9B55AC3-7D07-43DE-93B6-77CCB2758D69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Jan 11, 2020, at 7:41 AM, can zhu <zhucan.k8s@gmail.com> wrote:
>=20
> I did not set the auth.
>=20

Please share how your systems is configured. Did you set up your targets?

Assuming you set up your targets, and they are on targetcli, can you share =
your configuration file?

Also, can you ensure you have no auth set up on your initiator?

=E2=80=94=20
Lee


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/57585076-3602-47C4-92CD-5510CA87E4EF%40gmail.com.

--Apple-Mail=_E9B55AC3-7D07-43DE-93B6-77CCB2758D69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Jan 11, 2020, at 7:41 A=
M, can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com" class=3D"">zhucan.k8=
s@gmail.com</a>&gt; wrote:<br class=3D""><div><blockquote type=3D"cite" cla=
ss=3D""><br class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D=
"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none;" class=3D"">I did not set the auth.<br class=
=3D""><br class=3D""></div></div></blockquote><br class=3D""></div><div>Ple=
ase share how your systems is configured. Did you set up your targets?</div=
><div><br class=3D""></div><div>Assuming you set up your targets, and they =
are on targetcli, can you share your configuration file?</div><div><br clas=
s=3D""></div><div>Also, can you ensure you have no auth set up on your init=
iator?</div><div><br class=3D""></div><div>=E2=80=94&nbsp;</div><div>Lee</d=
iv><div><br class=3D""></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/57585076-3602-47C4-92CD-5510CA87E4EF%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/57585076-3602-47C4-92CD-5510CA87E4EF%40gmail.com</a>.<br />

--Apple-Mail=_E9B55AC3-7D07-43DE-93B6-77CCB2758D69--
