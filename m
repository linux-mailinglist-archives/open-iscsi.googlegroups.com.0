Return-Path: <open-iscsi+bncBCOPRU4C2YDRBBNXXD5QKGQECXZE3QA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA80278E9B
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 18:32:06 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id 140sf586662lfk.16
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 09:32:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601051526; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqDCfzPJtxguJMsLPOnj90s9pzba8JEK1CE+2aurevdEKso6abBEnjLF8LloMXqIjr
         UctEIx4aRMTVnUg6uXSNFqUDlXdvgTFvbbHfhQSST+0rkuuqNGRhvG2b5a0cJhtyHw0e
         tOEUvXj+PPSxL0cv9xu7x8Ig7iveS5dCLmaJJRvgsRhckcz44V/ESBGvJO1gpxVtkSDG
         n8n37noNZoqXZ/J2qnyOGL2gQTPLdGcPybLjR8FyMcsnbafm8Z7Re9NLkM9qvD7fY5Iz
         MVYX9R7+pWOPO/uKQd5FDIb6CjOVd3SIehmxHfZY1eb8cg4ClYwKzl3dRIeXovvtpVVM
         y2Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YkUd9nO6+8u2iiiyTPnxzVGt1xgFkBrDJBxePfEK64M=;
        b=aHL6EM3vpzKTpA3WNzpRYLq2FfPwR2QO9dBzRiQIOsudyr05SNp6KPBa4TM990jaS3
         +pidUxooFPl1BKJRUvLoWFNLjWITgj1GZlf+Bcb6p/fpvxlJnFRgszNPxjYIXB5Qmgk9
         g8jUV0CM7ZqF2bGu820Cyrb4ljAf0RzE9cO4v1G13GR/eyeqV65VdF8U36EfmA6hn+n7
         TFWYFS5d6ah2s2uL3vaEnEO4bYMu+RM+xAqdEAomwOF7Ccgo18Olza9HvqAhv3sIr4Y+
         kcVFG03oOpHUY6YNgzx585/oB+FCrD+cJf2ZbqXiEKfT5JLPYDjzx155isHZmtCBzSlz
         D89g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxsTCzpR;
       spf=pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YkUd9nO6+8u2iiiyTPnxzVGt1xgFkBrDJBxePfEK64M=;
        b=Kil8LickAk7Uyio2RbEVyYDQ6oj0Ihz3mIRjwSpdJaG2hqh7JM0J9bohpHiHIizigu
         Ao/y/NWD1S3Gth6oGT48hIjxPGzLryt6DIpLta4hPheCEVv0VjUNUV8kkT83WJNh0zCg
         UBtLwbuWV+49C9X0X6qy7A9wvYdPZnPkpKS4ogBKLzbiUIIgqktYAx4C06xzgnMx4Glf
         7BRE2qehYnVp1PUamxB5pFPNvNIj7xdtNDca0Wnh1aEbwJGRbgK7l0ejE2K+fIPn2w7j
         Zany469tANuN+34nn1s/K6O3KR7xc5gWvZeNN4kG8H+hTAk7CKZ//SkswsLEG35Koxnl
         Cuqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkUd9nO6+8u2iiiyTPnxzVGt1xgFkBrDJBxePfEK64M=;
        b=ZEqwi3pHqVHDLn9X/6V2Trjoq8J8zrQthLeKVIX/HACzRSRkhp3hz/h5G09XoGId8F
         u7K+zruYKvw94dZgicGyjxYD6mX/88cr442b883fMCECEWITj55ewCgk+3lM0L/Sr3Qd
         Z+aXbaqy/3J16LMpT7NbOdCBZdHrXAZ1jzp/VBrUjc/nAdrYme879ittCZtdDZvJrO1r
         udf9Q9ubn0S7X+EiRPH02Pd9GVeHW9QI2S9cgvZJ6xiM+wcjUf3K2XvG6bQZcp/UrnT8
         15dQA9T4PoQWWc9RFs1BmqO3/5HHnENKv7e99GJwnwEAa1ZCXeeBYjKyHEjAC1ZWmgh4
         XL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkUd9nO6+8u2iiiyTPnxzVGt1xgFkBrDJBxePfEK64M=;
        b=aBwlQir1abK7va0MqAA0A6n7V2asIfqyK7GVRtoJlNqeOFcrQToy5uPUrSKURe5/Om
         9fUAR6AQt4RtucdgDLAkJ/UerUp/tgzwvPqovN2hSovbSViQ0vwLUwjJSKDK2dUXMxW6
         bYkejj1jetnDOL8sxG3Z3CXDOWULROo56HGkv+87CKlMgMLsjp1D2yAi8B5DH0IYEqDf
         jl8E2h56a21w07YaHD5DYdcm/yc2aqa4AeANlF5hY2CLBvDX1g5KgVV//41gztluvorM
         i+zQ2j7YAyjHEm11onDMZp531ik62ZKNaFNJx6g7gw9I8fwA9XI+1vVPdUwNVTgzh5x3
         7HQA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5311HwrMgj0wGhBLvLOHxZET4vnatdDloW1fGo2UPTkKbmviZH/E
	5vCspwnbibIIfQR+scMAWDo=
X-Google-Smtp-Source: ABdhPJwDw0UcuH7Xva6mHudgSylygQQyRqdVueN4BjDQx27GObhEX3WwJ4+DVQkqQ1UwlaBuqoOK+g==
X-Received: by 2002:a2e:8693:: with SMTP id l19mr1705988lji.25.1601051525848;
        Fri, 25 Sep 2020 09:32:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:86c8:: with SMTP id n8ls477583ljj.1.gmail; Fri, 25 Sep
 2020 09:32:04 -0700 (PDT)
X-Received: by 2002:a2e:3809:: with SMTP id f9mr1756466lja.5.1601051524756;
        Fri, 25 Sep 2020 09:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601051524; cv=none;
        d=google.com; s=arc-20160816;
        b=Lgy6Xr1a4R+WxoIP/u3eg8ZExAjOb4oVcIB3OJraHUS+tDgp2SnEK/bb4Tg1rH8IXr
         AKIc58H3KIKKdEkNk6yMnIhHXFj3zctvVcXcnFV77By1deXRIgGZwA/KsiesLmVztsZ8
         CuZQXX1i6ysFbj0XHdU+g9wBkQKgcxr63rfHDkn77PwzFCPEcaPt6IeGRm6QLkYYfV53
         T1+q6WQEQqTO0ug8MfdzdtqHTS8L22hBGWqLlqnQTn2jungXHvaysnU1T9GLQh9K8nR+
         eMUKltpLoJZXTRIJzBgVn0eQrMzSawx8QkbPcQUqTI4AeP5yIVN707q8RXWAN2GcrmwH
         O3Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=+Sru9Jv8Tb/NjJa+JAOCff8euZqNqFzFOOYdDlaqyt8=;
        b=Lm95X1ZCVLrNsxDfIwM42g8mrdWc/p7DipckKElA5fzdqeIzSJ3Hh9jcN8d0T58a+q
         JtGmgWYHtzvTLdu12WO/v1v3qgEEZYyhewC5G4KSEudjg3eW21BhbPuJdfGzz5IJX9LZ
         VLjzriBTVZRT25jgfZ/sYWvqrj9PhvbVC6wZ1r17lgFbGcNFj8h1sfHpScFKyDT0aRSY
         RCO9jerIDLY8OSjyFtyxIBa5Ygolx0yQYMn2as30mpqr9JfXIPUFhns0ltR/TXCFTN6p
         fF2hRl6OZV2tWDinE5gAR8XdowMy4dpnYGfc9p9tzJfgi64pGPY3mglohkpyhR3O3WwQ
         yBmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxsTCzpR;
       spf=pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id y75si95984lfa.3.2020.09.25.09.32.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 09:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id b19so2945998lji.11
        for <open-iscsi@googlegroups.com>; Fri, 25 Sep 2020 09:32:04 -0700 (PDT)
X-Received: by 2002:a2e:b6cd:: with SMTP id m13mr1751956ljo.383.1601051524376;
 Fri, 25 Sep 2020 09:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
 <8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o@googlegroups.com>
In-Reply-To: <8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o@googlegroups.com>
From: sonu kumar <sonukumar159842@gmail.com>
Date: Fri, 25 Sep 2020 22:01:38 +0530
Message-ID: <CAOaPBH7ZNxdDExFQ5GTXXH9+sBSyoUA7_itpDPjvcd7EzqqFEA@mail.gmail.com>
Subject: Re: Todo list for open-iscsi
To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sonukumar159842@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CxsTCzpR;       spf=pass
 (google.com: domain of sonukumar159842@gmail.com designates
 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Thanks The Lee-Man, I just sent out a patch for todo update.


On Sat, Aug 8, 2020 at 4:01 AM The Lee-Man <leeman.duncan@gmail.com> wrote:
>
> Heh. I just realized you uncovered one item you could do: update the todo list! But there are things in that list that you could help with.
>
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o%40googlegroups.com.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOaPBH7ZNxdDExFQ5GTXXH9%2BsBSyoUA7_itpDPjvcd7EzqqFEA%40mail.gmail.com.
