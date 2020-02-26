Return-Path: <open-iscsi+bncBC755V5RXMKBBJ4G3PZAKGQEMVQ3AJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 24165170892
	for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 20:12:41 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id c11sf43910qtv.19
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 11:12:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DwBT9JERGt2YFpfdpSiUSqtm1CxW32rt8GabvjAlDwI=;
        b=YCLLPBAPD5yK+qyJFogiMdotOXD0debETks5LPPDC59AXoHqFQgHRc9wUFcaeXVmBH
         hgTSkkO8d4wQBf7A5MhQxW8060owlzcHn4dEguFuX8e+ngrmxh918Ub054UobrZwQduK
         iAQkhf2Zye/+m1xQI+WOYRSTaoY1Ehm+ewy3tILCkbam4RjW73BIiT4R4cAMqoeDam26
         4BEIHRuJirtCXaZWagR1DUBb3BmPU5BzjZ7LssI8dy2N+nedf7oYHbFNoxTZE7j1dBWA
         Dbm0j43srKArlPr/dTMJwtf62F26/1+etyH6ifYHOLwB9q8fwhMTWYwZZNFBabE2GexG
         gaXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DwBT9JERGt2YFpfdpSiUSqtm1CxW32rt8GabvjAlDwI=;
        b=kIMZEP6A4UjQQwjBgm7L8EOcfT13XPT212K3OD5PUPr2gjC9COw2VwebdHdj2zoB5D
         /GF4MDT1vKwgJK5Sf/QI4q83Z+k/GA5gYkhbVfh5uUMTRfE7V6p0ktRDfsdFLJiTANUM
         yfEDNhehafp0x6RQUEI4a/hA/cs9dSvBTAUPu11rfWt+Q7LPh4E7P6W/mNL4QsSMGbXW
         Y0cBVGVXtUWmj9p3FAJ9tmXYV186PvpGif4x4F9omysERMZkjlHYmZaJ2nWr0BGVixR8
         xXCZYLEJRZzT+Zv059mAP4zdc7hnysOsAcne53Ef/pNg7B3Rdq4zCTSCvSj64ZYLBIvw
         nTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DwBT9JERGt2YFpfdpSiUSqtm1CxW32rt8GabvjAlDwI=;
        b=loPUsD7JYV4C+nls4MmVnGEgpyUo/ud8+152zgNKB1vDEtz6Cth96fVVxCpZiOdGRl
         tJBSVQTa02y/n7r8kS8JAe25AMdhYkVdBuMZj1SgRLTkZu7Y8VOB7IS4z+5B5TitxZkG
         Y2tt/4Ac8zLaMpb2k2sdwMEXMSjJAmw2F34fkC0bmdAEobTOqiH8LstFSzK29Y7Cf6Ht
         1y1Eaji6L+A/TYKsVBWFZ8S/s33IME1Xr2ZPly4POgehpCAj52AsakJg0wU4JUjKfLXR
         hAs0kS2kHDcLaCusYSEUbVkmD4B8OMSMlaIh7zVwRM188RXfIFwj6pglFXH3JKglJxAt
         gFUA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXub/hkIo2jwEN5VUGQJeBWlnqC0e3XpqYd5wkkfI0FzLLpMi1X
	b/VzZW4qak5GeOHaVgTDSdc=
X-Google-Smtp-Source: APXvYqyhk4wVsyy1eB6NlfGjrphDgtfkW1TwU0axYZzTexllVfgfnDsYdZzJy8TyUlLHfe+azjGSmg==
X-Received: by 2002:aed:2a87:: with SMTP id t7mr313961qtd.384.1582744360054;
        Wed, 26 Feb 2020 11:12:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:196f:: with SMTP id g44ls70907qtk.0.gmail; Wed, 26 Feb
 2020 11:12:39 -0800 (PST)
X-Received: by 2002:ac8:340c:: with SMTP id u12mr278871qtb.257.1582744359397;
        Wed, 26 Feb 2020 11:12:39 -0800 (PST)
Date: Wed, 26 Feb 2020 11:12:38 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <54aefe03-21e2-4b91-8593-7d178bbf50c7@googlegroups.com>
Subject: Tagging version 2.1.1 of open-iscsi/open-iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2821_2135382450.1582744358480"
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

------=_Part_2821_2135382450.1582744358480
Content-Type: multipart/alternative; 
	boundary="----=_Part_2822_2113511117.1582744358481"

------=_Part_2822_2113511117.1582744358481
Content-Type: text/plain; charset="UTF-8"

Hi All:

Just a heads up (for those that don't hang out on github) that I'm tagging 
version 2.1.1 of open-iscsi today, if there are no objections.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/54aefe03-21e2-4b91-8593-7d178bbf50c7%40googlegroups.com.

------=_Part_2822_2113511117.1582744358481
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All:</div><div><br></div><div>Just a heads up (for=
 those that don&#39;t hang out on github) that I&#39;m tagging version 2.1.=
1 of open-iscsi today, if there are no objections.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/54aefe03-21e2-4b91-8593-7d178bbf50c7%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/54aefe03-21e2-4b91-8593-7d178bbf50c7%40googlegroups.com</a>.<b=
r />

------=_Part_2822_2113511117.1582744358481--

------=_Part_2821_2135382450.1582744358480--
