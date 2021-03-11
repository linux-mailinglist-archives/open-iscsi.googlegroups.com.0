Return-Path: <open-iscsi+bncBC755V5RXMKBB2HTVGBAMGQEY4AIZAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D99A7337ECE
	for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 21:13:29 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id q1sf13478723ota.20
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 12:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xHmOGWo5TA1ZGUWwp/5LGfXfz2Rnmyo98iARVdly66o=;
        b=XL/YsEpGOf7sXy/JGaUCfHmh2i5TVnEq+Zw2O0HkJ62M2UEbDg6kiv1ImVHban0Q3D
         VpU6n1OWYYJVYfziqwBWs6PkJNHhhvBSWVscYliCR6a3X+0ahqdec3Km8vqFaXmADkxM
         jo1uCVX6AlGARPoq2eubYnny9kK6fGx9/7WDntmJvJT7Yq9ZrfR4aeBstszwfNcKzvOp
         64UhqVeoKMTK2gY/n0JV6NLkro/stCABFLrQK6Gl7JnXBRXAKpjmcdkvv7rBqT0BL31v
         cDZFZWFD5oHiQib9/bcSp4kc2Vq3Chgumnhlzxc5yqPR4DuApmnRaERaoi0b4FM25neq
         PHzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xHmOGWo5TA1ZGUWwp/5LGfXfz2Rnmyo98iARVdly66o=;
        b=J0ZQg2TdQsUcoJk8/v49OxwX7336P7qBOgzxjpIaZdo6D4dKK5wMd7R7UYl+qT8ljv
         31XHAfDrQMizwBUPxaZgv4GbIsgRCwv7nqwEjM/HUBS5qrQxZzx+pZbOiTVaU/qG27Vd
         d+ilglfR2VXfBPXK7h205eA4ZGoPzG77xOZJFTXOeGPAbjTuXe0Levr0t7WbZvEax+k3
         LTN8YGZm/h8iYqZ5SVizKE7zh5CEW2n4L+Ly/HiFndmg4VQ3Zc38iEkEqkyel9XUIuB1
         cyM+30D0tpZLdsRGiiB9iQuInBQrD5D/ml+CPSJkvUMX15UeNwwGSDhP7pbtN4kbRIxy
         Ue5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xHmOGWo5TA1ZGUWwp/5LGfXfz2Rnmyo98iARVdly66o=;
        b=Tg4z9xNBjb9emUVShQ9PZULw0bL883kpAXXxj7+IV/8tJe6+m3bK1RlmicriU2vEQa
         jCtBzXJacgWbhPF5OFEKlcvSUMQW1bdrEPAKanh/TBKeLyW7GF00hSxWIZWVWEi6tA9M
         UrvweFRa00/2ajW7L4UKXNQQYAxLdEDLYIOM0Wggop6pd9sCBQ8vP5zQ/MbGhVqBOB3N
         OyWWf31RPR6IBmh+SY2Tv/uredQ+PmTHYh4UxFFKb2D0lOtdMM4Av5tYAtU+gJ/s5fXK
         l4DxSCeiOfiT7wZDViXuYYd6XS3XXn8pqG2uDu+H+IPYyU0xdFzf+25QpOyIuxbLVs2i
         /wvA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5337J6brmFkX4Cixp7FOdnpC4jPd9hxQULkHFclbOmfTGJsOOfWc
	LfNfnMlpilqtrqcKpdztiCI=
X-Google-Smtp-Source: ABdhPJzLIGF2+uEGdzFk0C1rN/Q57mKXJ1Uou+nNBkFmdBjsbUCVkinmYXUQEQQBKAX2pARwsW7Imw==
X-Received: by 2002:a4a:dd14:: with SMTP id m20mr524528oou.47.1615493608875;
        Thu, 11 Mar 2021 12:13:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b303:: with SMTP id c3ls1695547oif.11.gmail; Thu, 11 Mar
 2021 12:13:28 -0800 (PST)
X-Received: by 2002:a05:6808:30d:: with SMTP id i13mr7785385oie.160.1615493608385;
        Thu, 11 Mar 2021 12:13:28 -0800 (PST)
Date: Thu, 11 Mar 2021 12:13:27 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8b2a125c-a751-4cd6-8f3e-7ac734654544n@googlegroups.com>
Subject: Tagged new version of open-iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1766_1699969848.1615493607842"
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

------=_Part_1766_1699969848.1615493607842
Content-Type: multipart/alternative; 
	boundary="----=_Part_1767_344208661.1615493607842"

------=_Part_1767_344208661.1615493607842
Content-Type: text/plain; charset="UTF-8"


I have tagged version 2.1.4 of open-iscsi. Follow the link for more info:

open-iscsi release here 
<https://github.com/open-iscsi/open-iscsi/releases/tag/2.1.4>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8b2a125c-a751-4cd6-8f3e-7ac734654544n%40googlegroups.com.

------=_Part_1767_344208661.1615493607842
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>I have tagged version 2.1.4 of open-iscsi. Follow the link for mor=
e info:<br></div><div><br></div><div><a href=3D"https://github.com/open-isc=
si/open-iscsi/releases/tag/2.1.4">open-iscsi release here</a><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8b2a125c-a751-4cd6-8f3e-7ac734654544n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/8b2a125c-a751-4cd6-8f3e-7ac734654544n%40googlegroups.com</a>.=
<br />

------=_Part_1767_344208661.1615493607842--

------=_Part_1766_1699969848.1615493607842--
