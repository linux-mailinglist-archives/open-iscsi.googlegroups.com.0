Return-Path: <open-iscsi+bncBC755V5RXMKBBE5W4D4QKGQEGWJ7LEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCAF245199
	for <lists+open-iscsi@lfdr.de>; Sat, 15 Aug 2020 19:27:48 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id a19sf5644523oob.19
        for <lists+open-iscsi@lfdr.de>; Sat, 15 Aug 2020 10:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=io0EzESCpFyoe+B51xiB7Voa0Viwdqa0fmtv0lSd+v8=;
        b=Z+Q+YEribxGVifYCmc2wpyW7BQTjgUMlFN3zehh7BP+JiUfJvfb7+aPDFLJEMhLAke
         XSTSFN7bjLFZwmnPSKUcTYQWPS5pgTumgSfy9IqqY/tcefxBIiO+8Th3ZJgBnzS2MkOX
         52/dJ8G/IKkshaxb+oNITUQqmHwLZY7rTKoGGDSuD5rTvotoIgf8avhmk18BjJsDZu86
         H359NfFHxs4WyMKekrYmWpdkGABMmPr33PUVnH2Qh7Hp7d2gOhoGGMgl1cJGQjF7tnG3
         0W+vWFCurOLeJ+zbtmUimSlgWL+8WWP3E/AoWO6df0bJPtWYwL55YmZOelsQ4Gspg/zf
         JMiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=io0EzESCpFyoe+B51xiB7Voa0Viwdqa0fmtv0lSd+v8=;
        b=lVKdOGoqKH+AWjk85gEHp+4fGiKl06IwM2AS56MssjfxMmOMnS/XKcu0pI4mu3SHRQ
         362WjGhRgs7YLYqYkMIMshThMM+OXMNU9TiiE6Wo2HsNeoryYX4SDfFGLKsfMb8TizFz
         KKVhT4arVjTHAVvwP0Qci7HcfRATBdNv1zV9maO3czPij5kr2Ufgbx24i9kYMX3sCH2c
         6FZ4EZk3vAsPWXyW4L0NvX1fMIVGAVmHt7RdaR0n66FLginprn2j/Ubc5yNgRDgT06oG
         vSUmWCyIL8YLKtCDbzngIeozLhWHNRZe2/dDJjqJrqAU+lfmHXyJZ1noeha9UW1u8jee
         Bgig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=io0EzESCpFyoe+B51xiB7Voa0Viwdqa0fmtv0lSd+v8=;
        b=uFPuau8LPQ1yXUHh81fxPXovQkwsMZv8FoR3k+yCjJhZ3yjihKHfReiPluJCNo18en
         TS7juceUkHyUshWIEi8xm8ZCzD7piKYwcdScD/ij1tB+fErD2ceDAWCIrVxR0PVZEf2i
         nRlI8OWlF/zRPKi7AZmTjPspOpidAZH//M1hFoIejHwdaszQ07ZZHxxXSeqwTmwFpRPs
         usqpLYqne6IpRM1aXctb6U+/go50AdCwB1hzoz7EZotPzG5kIeMI6wVV7W3ZfbSRGvWC
         Yr/phiY9AQq1DuYS2i65Y2YfWvNSrmhgPqCQ73EG29PBHfuOfwyyJjqQHs1DVCRqOZ5P
         JU5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531e+LC+4Q0BXk09HiBw2RaTZpGDFC9D3IArJJoxi0/+j5ms7Oq6
	b/lHNsLuelpHZlIK3PnmbDQ=
X-Google-Smtp-Source: ABdhPJzTnczB0pwBBew/s9dyf7+cneGcFDDLOnW2d3FDS+qYigcnIN40I4QSFmOL7448G2XKG4sDjg==
X-Received: by 2002:a9d:6b8e:: with SMTP id b14mr5819723otq.307.1597512467169;
        Sat, 15 Aug 2020 10:27:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:d555:: with SMTP id q21ls235035oos.11.gmail; Sat, 15 Aug
 2020 10:27:46 -0700 (PDT)
X-Received: by 2002:a4a:9e41:: with SMTP id w1mr5714423ook.87.1597512466642;
        Sat, 15 Aug 2020 10:27:46 -0700 (PDT)
Date: Sat, 15 Aug 2020 10:27:45 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <b056c771-7c09-48cf-954e-98c29924b0ceo@googlegroups.com>
In-Reply-To: <20200814130904.GA3597@mit.edu>
References: <20200814130904.GA3597@mit.edu>
Subject: Re: BUG, lockdep warnings during iSCSI login?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_501_41949797.1597512465784"
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

------=_Part_501_41949797.1597512465784
Content-Type: multipart/alternative; 
	boundary="----=_Part_502_1695308973.1597512465784"

------=_Part_502_1695308973.1597512465784
Content-Type: text/plain; charset="UTF-8"

See https://www.spinics.net/lists/kernel/msg3607739.html

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b056c771-7c09-48cf-954e-98c29924b0ceo%40googlegroups.com.

------=_Part_502_1695308973.1597512465784
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See <a href=3D"https://www.spinics.net/lists/kernel/msg360=
7739.html">https://www.spinics.net/lists/kernel/msg3607739.html</a><br><br>=
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/b056c771-7c09-48cf-954e-98c29924b0ceo%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/b056c771-7c09-48cf-954e-98c29924b0ceo%40googlegroups.com</a>.=
<br />

------=_Part_502_1695308973.1597512465784--

------=_Part_501_41949797.1597512465784--
