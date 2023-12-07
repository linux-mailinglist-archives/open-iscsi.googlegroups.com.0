Return-Path: <open-iscsi+bncBC755V5RXMKBBI72Y6VQMGQEGSZW7KQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBDE808E4B
	for <lists+open-iscsi@lfdr.de>; Thu,  7 Dec 2023 18:13:10 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 46e09a7af769-6d7f8035fd8sf3177970a34.0
        for <lists+open-iscsi@lfdr.de>; Thu, 07 Dec 2023 09:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1701969189; x=1702573989; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:message-id:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lyck9R4etmM2ipgb5WvL4X41vZXS4+1+T8hALvRIZbQ=;
        b=gQz98bhWrx4PeArwAwdZ10grIIyRI5cOYkl6g1Hi2Zwbzsk7RWRbK0D2VI0Yp3Fp/A
         aTCsm7xKFwiJsYlHIbmabcZq1OP+4iIXEAj8mINe3teTcDjWKFnoFmQBH6oaLA3796XY
         g2LT0vYgEHKgF0ngwJiSzdl6fU/t1+hdRbp2nh1MJbgZGCUjXOItY6BSh/qtrLvJI8RE
         fI8hIGjE5vMaQpPy9mykEA30xex2uHYw3vps0r6OINYX5buEesYsZBlHwUXPvyW02fwE
         9dvLjEDYaa46+zE1uhOlp7ib7BQwWD2DbI7sPdkVco3U6M906rPjzxDat6At62usGVXD
         uRAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701969189; x=1702573989; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-sender:mime-version
         :subject:message-id:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyck9R4etmM2ipgb5WvL4X41vZXS4+1+T8hALvRIZbQ=;
        b=PfyKBAyYHAa7dSqT81yJdCOB2pt7rT1n3IGnRDDE38PzKFymVETxsfC4QlulZmsF4b
         Ta08GmUE6lpLb93cIKCGIPRPzh3UssXfJgpuIgUBEPPyYFidj0/vGX90iMtoXxGQfwiJ
         jUO322g+0TNxhoPcgwLsCfvXYr7LzmGbJFbtxx5zY57XwQabPSppwpfR9kPrsAva74CY
         8SGaCMJFGCtIBfuQBL3wcfGIRf3q/h4YymFjSSm83i76WJErbP3OTEXTN86diuTEatC5
         hEYmnKDPCLYE/AWNuRBTxxre9vRc0ZzA5fCee156hQ/FmAbE3i6wQ5ygbpheU/QwkT73
         tSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701969189; x=1702573989;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lyck9R4etmM2ipgb5WvL4X41vZXS4+1+T8hALvRIZbQ=;
        b=f5A/ZRDDiaO+HVA30B1ltvJIhkbfmCE2YPpUa6dM9iiYCLf3mluPW9/3GUVwJc4LxS
         JEc9aV3GQyhTvudIC2OMtbsJtE/Cx40nEUiiZ1qcNeQT3daR7oWFHdRRus0Z2lbONHMc
         fgsZ3xX0dsTGxpmfB+bYiMgykTVu5w6TLnCbhzAs0D8RRFDNULRPcwA99GLUnxweYtoa
         4d8DpaUqqSZZLUN9obB1j0hWdl6eUdB7p3eMKzTqab1pyToT/O/UpRCcbi6+e5Left8z
         lTA2+4+GeI4AqkDv0gIw5zXFB+FhoOFJRiG+71EedMx6hzaQKd6cx3iFPFz2vTsyNYLF
         8ubQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yy53GPLkzOzHWRGaWeDPh6/s/mj5iPRngOdpY+JOfM6cT5kyYm5
	IQ5kXzov0KN4/65JTC0l1oc=
X-Google-Smtp-Source: AGHT+IHxn6JP+tZcHZBfMhOGqfR8crJK0awxF8xFQ5jsa+iF+4+rMotuz2tfQUiI2yXwEwLsGNEM2w==
X-Received: by 2002:a05:6871:4087:b0:1fb:75a:678c with SMTP id kz7-20020a056871408700b001fb075a678cmr1518561oab.51.1701969188870;
        Thu, 07 Dec 2023 09:13:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6871:3a26:b0:1fa:1efd:f65a with SMTP id
 pu38-20020a0568713a2600b001fa1efdf65als1632897oac.1.-pod-prod-06-us; Thu, 07
 Dec 2023 09:13:07 -0800 (PST)
X-Received: by 2002:a05:6871:5b06:b0:1fa:e120:4c64 with SMTP id op6-20020a0568715b0600b001fae1204c64mr3539954oac.10.1701969186819;
        Thu, 07 Dec 2023 09:13:06 -0800 (PST)
Date: Thu, 7 Dec 2023 09:13:06 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <6914e825-c84b-498d-9254-19aaeeddc946n@googlegroups.com>
Subject: SPAM control measure stepped up
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_58134_122472867.1701969186198"
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_58134_122472867.1701969186198
Content-Type: multipart/alternative; 
	boundary="----=_Part_58135_712015036.1701969186198"

------=_Part_58135_712015036.1701969186198
Content-Type: text/plain; charset="UTF-8"

Hi All:

Most have probably noticed quite a bit of SPAM recently. This was because 
anyone could join this group, and then post.

I have changed the group settings so that joining must be approved. And I 
have kicked out the latest SPAMer, and will continue to do so. Sadly, 
google groups makes it a bit of a PITA to block an existing member, but 
it's not *that* hard.

Lee -- group moderator

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6914e825-c84b-498d-9254-19aaeeddc946n%40googlegroups.com.

------=_Part_58135_712015036.1701969186198
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All:</div><div><br /></div><div>Most have probably noticed quite a =
bit of SPAM recently. This was because anyone could join this group, and th=
en post.</div><div><br /></div><div>I have changed the group settings so th=
at joining must be approved. And I have kicked out the latest SPAMer, and w=
ill continue to do so. Sadly, google groups makes it a bit of a PITA to blo=
ck an existing member, but it's not *that* hard.</div><div><br /></div><div=
>Lee -- group moderator</div><div><br /></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/6914e825-c84b-498d-9254-19aaeeddc946n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/6914e825-c84b-498d-9254-19aaeeddc946n%40googlegroups.com</a>.=
<br />

------=_Part_58135_712015036.1701969186198--

------=_Part_58134_122472867.1701969186198--
