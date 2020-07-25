Return-Path: <open-iscsi+bncBC755V5RXMKBBSMD534AKGQE2AXQ52A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F1322D364
	for <lists+open-iscsi@lfdr.de>; Sat, 25 Jul 2020 02:50:18 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id y7sf473802oie.20
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jul 2020 17:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JSym1eYkj8O6hS8BeMEC8KePM/B4G+sah5sWNQEvInc=;
        b=aLXp9kOC7XTZSIYKBuB6bsxAmF/e8P2XMKwRqzx/N092Umrx9S1ge3U7TSi3We3D3Z
         t0d6+btQ/YLxDS8r3jP32UIDbdo//eM59QKDZvVRbLP+zkwE+d5U1bPAKr1ptO/jp9fm
         MYrvPc9nIJ9bvYfZl7cwtPzQG61OPpV6ZhrcY2mHbKwDvYzJgSwYul/7L85Rq1S7RP3f
         E78EZq6dAMJL8EKdN7kq5J1qa020ps+cI9GGiiP0pk7UP+yEqITV6Ig2wd67vAuVHh+B
         NppmSIUa5MQKrPP7konqCGRtj1tEqpq5nYVn0XcyZzD2vUvvSrtVnHpTHBpJJn4H9ovK
         Yd2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSym1eYkj8O6hS8BeMEC8KePM/B4G+sah5sWNQEvInc=;
        b=mq9ydtKU25pvvb8MSoMhUz3UHo5/gUlNfpOnlwpwY359IbymlWIYsdEj4DO/3xLQoD
         0brVhJycYsJEMHTx7Xmqpr5dragLaOGodczvbwQfBfSzrXK9VLw5NGLTNDplOQyZuNiR
         01HOUWKWS1nSD7OeA9orLIkkW0AErwaKm32BpHNXlGshEaR5AevG5vjC2bxu5YhRlMFJ
         0zErML90jif+qESuhYhJal9xYs5Vrdk8uhzJdZxj/Adqkq4V++uYtNYTrGXQ3ud8YQ8I
         dWa6rJcsS017Hd4hWuke+NFm72sSqCgQLtaxMLPqhlIWg28MfpwrcmTJEepkQfO72qs1
         SWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSym1eYkj8O6hS8BeMEC8KePM/B4G+sah5sWNQEvInc=;
        b=WqOcV7VdHZXSgGtcXzSadpTvTB8jHEceor0MN50GHtukzZ0ne9zJ5W+MEWCYC9fl+V
         4ChiUxpvRpKGtnS5Gw7pj9zADGnOo2i8V0Hmv1RSg4oUt/kn7rsMJdTCbPCnWcK6npnU
         oq9oBg1EWqYzSe8dr9PU0fXyvL7yMPoJclJ3JrRonmNw4+JIquZfXYaiUHQzvXk0FpTq
         r8mfet81cT/hOuTd+SCqlo2XblnECLF93sr2a7G/YKMG3axXNdXB7TilrrpBlWrTzKos
         IR+N0ELIfygSaROE336GUpzF9Ljplrwh9eEg5yr1gG7HbetaLZSVT5GhVI2ZHpo6hyvQ
         j+7A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531maOToZEbKX7ciCoej+oHA3MgwkrAiDcvU/ADxrmNR4aV6P+Mj
	NI0INA/gbmjF1sSAflIFV3Y=
X-Google-Smtp-Source: ABdhPJyz/wR6+Vcfxi0l4UHLzwjg6SrCvC0w+yoZJves/LYazqoAxyf15a60NvtI61UBuU4/ukzRdA==
X-Received: by 2002:aca:c543:: with SMTP id v64mr9858649oif.144.1595638217085;
        Fri, 24 Jul 2020 17:50:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls2213405otp.8.gmail; Fri, 24
 Jul 2020 17:50:16 -0700 (PDT)
X-Received: by 2002:a9d:7352:: with SMTP id l18mr10493999otk.177.1595638216505;
        Fri, 24 Jul 2020 17:50:16 -0700 (PDT)
Date: Fri, 24 Jul 2020 17:50:15 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0d9405a9-883f-4a22-91c4-53ed89b4013eo@googlegroups.com>
In-Reply-To: <75d8c579-b124-4e5e-936d-f7a98b608c97o@googlegroups.com>
References: <75d8c579-b124-4e5e-936d-f7a98b608c97o@googlegroups.com>
Subject: Re: About to tag a new version
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_79_1910273489.1595638215791"
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

------=_Part_79_1910273489.1595638215791
Content-Type: multipart/alternative; 
	boundary="----=_Part_80_1467639908.1595638215791"

------=_Part_80_1467639908.1595638215791
Content-Type: text/plain; charset="UTF-8"

On Friday, July 24, 2020 at 1:04:43 PM UTC-7, The Lee-Man wrote:
>
> Hi All:
>
> I',m planning on tagging a new version of open-iscsi, which will be 2.1.2.
>
> This would be a bug-fix and cleanup release.
>
> Any comments/objections?
>

See  https://github.com/open-iscsi/open-iscsi/releases/tag/2.1.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0d9405a9-883f-4a22-91c4-53ed89b4013eo%40googlegroups.com.

------=_Part_80_1467639908.1595638215791
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, July 24, 2020 at 1:04:43 PM UTC-7, The Lee-Man =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><div>Hi=
 All:</div><div><br></div><div>I&#39;,m planning on tagging a new version o=
f open-iscsi, which will be 2.1.2.</div><div><br></div><div>This would be a=
 bug-fix and cleanup release.</div><div><br></div><div>Any comments/objecti=
ons?<br></div></div></blockquote><div><br></div><div>See=C2=A0 <a href=3D"h=
ttps://github.com/open-iscsi/open-iscsi/releases/tag/2.1.2">https://github.=
com/open-iscsi/open-iscsi/releases/tag/2.1.2</a><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0d9405a9-883f-4a22-91c4-53ed89b4013eo%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0d9405a9-883f-4a22-91c4-53ed89b4013eo%40googlegroups.com</a>.=
<br />

------=_Part_80_1467639908.1595638215791--

------=_Part_79_1910273489.1595638215791--
