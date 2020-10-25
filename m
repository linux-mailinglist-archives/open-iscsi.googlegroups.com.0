Return-Path: <open-iscsi+bncBC755V5RXMKBB66Z236AKGQEGJKJZNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E73298299
	for <lists+open-iscsi@lfdr.de>; Sun, 25 Oct 2020 17:51:09 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id k26sf4754206oop.21
        for <lists+open-iscsi@lfdr.de>; Sun, 25 Oct 2020 09:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=I+suRLZVfxPnNfLv+LDT8DwHUerjORbtaq2Wei7HibI=;
        b=LOpgp26EYgj68RUaZeE9CHRrnlPY1sSYsnv+SH6+dnUvcde+5Jf1xnXIK08pixVQ94
         xU1hl/YyNye2huuiTLxnBHNvu7p5u2e5AyKUN6WOWPEOqcAmlOFI3ID63bW/by8+iMyh
         X53Z/JzPfiaeG/CTqynq8ZElfCdfntdGhqotgyQVVfyQ9IctRsH881PhckUGydGS9lQl
         HWAIKYToVVYU0rVELsbDbGOOrOTJYHSn9xUbGAuEN/W05P8/TSYzizHV0YkchmGcONv3
         m/clzsMz4SEYvL20XLannaSZ5BYhp5F/pkfB7TH3HnpjMl2ge+CWmFR6dbtr8yLItN+n
         5cnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I+suRLZVfxPnNfLv+LDT8DwHUerjORbtaq2Wei7HibI=;
        b=n91vqsXPZyn7uEp9KyNohWqYHyOuzsfdG5XlKzUMwdn+Onw4pzA8E2TtS+oohaVFGr
         udumtj1heHhxCeS9DrGRdezgh7mXUaiiOEqzxeTrDkwe0+1vcF+OI4QmiFOIDFieN50M
         8BA1oJlWWt2kh2q//3jzn4hFDyyAt0s7Lm1fzxPmxjfvgAsmM1D4w1hGYr8zc9F+3i0m
         ZNJRLtCgsjyUMQ48KIVYuNTablM/unyk0c/+HZpXc/gtZtTvTxx4Qp1hJjtzEKjDj9e9
         Qn8vSoyhFQ2ssrtmaYe7ZbyrwAv28ie+FFBVIND5/SboInbSPK6qaoFUEniCt4iamrCd
         E6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I+suRLZVfxPnNfLv+LDT8DwHUerjORbtaq2Wei7HibI=;
        b=UuGRYMgdjrTCnQ9jxn/32CEth5mEC4sPtkrrR/y9VLrKBBX+wMfXuPQ6QKCV4TPCHG
         jaZK5zeIqfDMaprKoHUgl4uFqCpYyUnd9Yja4ux9jzrT40poTQGrR2x2sJYmiGWPwzR2
         KJP0X4Dw57eGxKy3KB6BTiAG0oYVIDE7IcY2ITb1m8fR9dvdSfXQjL/XG+xjyZp7TkXe
         8zURqoGL3ud9QQJaE2Ih0smu5BFnngSJm8JcMotcaa58wcH9fIVpzg1wKTG4D5M7ksTb
         jxYVWmFAOzIWbhwXS/bKlb0I+9LQxvjJLLicBDYUX5uXtyvppm0d1mw5fvrkjON0T90S
         pQhA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5335IBTBwEmY18hcQnjK8K1nSYIbeLXamArFAJgu74js/4p5ZYYL
	jQMXru8UNQOk6YAxbnf9TdM=
X-Google-Smtp-Source: ABdhPJze7yjhEhbDbToSuftXIk0ylYLi6JMaU3q7k1fjkQchrjw/S8ftHG0ztK5vkHcWv7vAdvvk1A==
X-Received: by 2002:aca:e187:: with SMTP id y129mr994814oig.61.1603644667698;
        Sun, 25 Oct 2020 09:51:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:7394:: with SMTP id j20ls1539601otk.5.gmail; Sun, 25 Oct
 2020 09:51:07 -0700 (PDT)
X-Received: by 2002:a9d:6a55:: with SMTP id h21mr10187219otn.297.1603644667100;
        Sun, 25 Oct 2020 09:51:07 -0700 (PDT)
Date: Sun, 25 Oct 2020 09:51:06 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
In-Reply-To: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com>
References: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com>
Subject: Re: Slow iSCSI tape performance
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1448_378269703.1603644666283"
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

------=_Part_1448_378269703.1603644666283
Content-Type: multipart/alternative; 
	boundary="----=_Part_1449_1775471557.1603644666283"

------=_Part_1449_1775471557.1603644666283
Content-Type: text/plain; charset="UTF-8"

I haven't heard about disabling TUR for iSCSI tape improvement. Even if 
true, I'm not sure how you'd do that. You'd need to modify your target IMHO 
to always reply "ready" for TUR. But TUR is used to clear some conditions 
at the target, if present, so not sure about the semantics of ignoring 
TURs. Have you tried setting the streaming bit for the tape drive?

On Wednesday, October 21, 2020 at 6:43:22 AM UTC-7 david.p...@perdrix.co.uk 
wrote:

> I've seen a report that disabling Test Unit Ready across the iSCSI link 
> can hugely improve performance of remote tape drives.
>
> Is this something I do at the machine hosting the tape drive or at the 
> client?
>
> Is it relevant to open iscsi?
>
> Thanks
> David
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.com.

------=_Part_1449_1775471557.1603644666283
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I haven't heard about disabling TUR for iSCSI tape improvement. Even if tru=
e, I'm not sure how you'd do that. You'd need to modify your target IMHO to=
 always reply "ready" for TUR. But TUR is used to clear some conditions at =
the target, if present, so not sure about the semantics of ignoring TURs. H=
ave you tried setting the streaming bit for the tape drive?<br><br><div cla=
ss=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, Oct=
ober 21, 2020 at 6:43:22 AM UTC-7 david.p...@perdrix.co.uk wrote:<br/></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;">I&#39;ve seen a report=
 that disabling Test Unit Ready across the iSCSI link can hugely improve pe=
rformance of remote tape drives.<br><br><div>Is this something I do at the =
machine hosting the tape drive or at the client?</div><div><br></div><div>I=
s it relevant to open iscsi?</div><div><br></div><div>Thanks</div><div>Davi=
d<br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.com</a>.=
<br />

------=_Part_1449_1775471557.1603644666283--

------=_Part_1448_378269703.1603644666283--
