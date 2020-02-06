Return-Path: <open-iscsi+bncBC755V5RXMKBBBHN6DYQKGQEOZZDDEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F5015488C
	for <lists+open-iscsi@lfdr.de>; Thu,  6 Feb 2020 16:53:41 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id m8sf4094222qta.20
        for <lists+open-iscsi@lfdr.de>; Thu, 06 Feb 2020 07:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TmcNQOVgs0Po8Q/ym9dADINrTiqBFrvTHH0tsxr3Csc=;
        b=CHW4wmsHze7ijQuxau9bV57paOFTyfzdtkCzNZT3fmVwXk4NlY6Zrk+XDfpeCPE9jN
         Swx+OsKiYApJrzsymU0ra7EEMskStzFGk6U1GL4DcAWq6uY98sXSjuYe4fKnKwWY4Dhq
         7F7lTzw08w+yoMcaTyAsD6Axoohjzr64zBsNd70WIQ9G7daj8x7+LyvWx675STEGYxKA
         YtMfJgQf9j66uk2sy2hZdVVp/xkpbjeNC2YYM6YvvEmsFUKzwy3xfMN2WgLrd7NlLEPj
         t6zJAcrVQE83NyhNzlquzIx+amF7AOWO5uf9Pz5Kkn86r0nMRR57dmkhYFVvPyYyvAqC
         eKKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmcNQOVgs0Po8Q/ym9dADINrTiqBFrvTHH0tsxr3Csc=;
        b=hem6K5TemJ9twxxkfzT0LjFISMOOLHNcQwZUbvfhagWIz4tcaRtRBmPfFCPKeAPWzk
         Y9YzMoAHreLq3+SCNRnWaqLNSafAY+ca3K+8sv+/z3u2cgm8+8Z3ss0fMGF/XKxmq2wx
         WBMgjl2Fb4x/Lc9jIfsdiKmV0udOEYBzv9k9M7mylaWOUCN3Fa/3FX3JxTzbV9+P32jn
         4Xxb7A/9Kvduk00htSYRqd6pOZeRQ4sBPgtDDT9KDz2nEuwGQHUulZktT7HjYzO7EwMS
         Fxp0QokZOjJ0LL7ILj98WuE6QoRNsbgn1Hsm46dZtd0nQ9Cpgm4TnqKiXkZnpqpHN2WF
         lNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmcNQOVgs0Po8Q/ym9dADINrTiqBFrvTHH0tsxr3Csc=;
        b=BubX44cTFrNC7oufmMqQU4wRzOHXvH9X6PIClashfGsTszUx9+Ihtt6jlj+4DgXvQa
         KXAlCqMrAx7uVvYE7FVUpwu9nA7/YoZfYEhyTIrckiH7LQv21I7Iskf/7piF0t6aZTur
         sUv0OZ0pHpiNUi8PrmoxPGWS0VFY/n0NyrC5hgszrx3gI28tICV5w1SpessY4sBzkojH
         s+qFotKYDy0ZdcUe7XXxeyOzy6aL9UcMdVauuNyI2l35Hjn+py4vAjo6D3PbF3hGP/eq
         KKx3jo6t/uK1KZYxX7sliZaUPMAJj9WXGwBxntYP3Zq3SqOlRm3v7FLycB/bd1OZu4Wz
         F9lQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV2tgIRuWOP55V177eYqpu5RUP2ScNwkFTpM2REZenWCJ+o0G/5
	J+x5J5K5YOYPJYM5qmo7upc=
X-Google-Smtp-Source: APXvYqzezcnk2wO+RLW8mNl8514BiYTbLMyxXKcg15GIhgBG1AuP+voPctkf+lp9mJCz8R8iUhdVdQ==
X-Received: by 2002:ac8:4456:: with SMTP id m22mr3261130qtn.362.1581004420619;
        Thu, 06 Feb 2020 07:53:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:1021:: with SMTP id k1ls1658150qvr.4.gmail; Thu, 06
 Feb 2020 07:53:40 -0800 (PST)
X-Received: by 2002:a05:6214:1150:: with SMTP id b16mr2930952qvt.71.1581004419914;
        Thu, 06 Feb 2020 07:53:39 -0800 (PST)
Date: Thu, 6 Feb 2020 07:53:39 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <406044f7-9a9d-466e-b7c5-c203bd0e408f@googlegroups.com>
In-Reply-To: <20200205155137.fp34xo4xmpbuxu75@localhost>
References: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
 <20200205155137.fp34xo4xmpbuxu75@localhost>
Subject: Re: iSCSI and Ceph RBD
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1770_2005890565.1581004419315"
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

------=_Part_1770_2005890565.1581004419315
Content-Type: multipart/alternative; 
	boundary="----=_Part_1771_258365341.1581004419315"

------=_Part_1771_258365341.1581004419315
Content-Type: text/plain; charset="UTF-8"

In addition to the document Gorka pointed you at, I wrote up a presentation 
a few years ago on how SUSE is using Ceph and iSCSI and rbd, as well as 
tcmu-runner.

See http://gonzoleeman.net/documents/susecon2015_dandl_final_201.pdf

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/406044f7-9a9d-466e-b7c5-c203bd0e408f%40googlegroups.com.

------=_Part_1771_258365341.1581004419315
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In addition to the document Gorka pointed you at, I w=
rote up a presentation a few years ago on how SUSE is using Ceph and iSCSI =
and rbd, as well as tcmu-runner.</div><div><br></div><div>See <a href=3D"ht=
tp://gonzoleeman.net/documents/susecon2015_dandl_final_201.pdf">http://gonz=
oleeman.net/documents/susecon2015_dandl_final_201.pdf</a><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/406044f7-9a9d-466e-b7c5-c203bd0e408f%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/406044f7-9a9d-466e-b7c5-c203bd0e408f%40googlegroups.com</a>.<b=
r />

------=_Part_1771_258365341.1581004419315--

------=_Part_1770_2005890565.1581004419315--
