Return-Path: <open-iscsi+bncBC6MFJWO34DBB24MYSFQMGQEZ6ZACKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B74435ACC
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 08:19:23 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id bp4-20020a056512158400b003fd96a37f3bsf4213874lfb.21
        for <lists+open-iscsi@lfdr.de>; Wed, 20 Oct 2021 23:19:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634797163; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Xb7p5Uro6X8IxJERsXiKiVS6umtfz5EeM9gS8RB6NErnASynXfLxTFhbB5pWsixY3
         /KQqLZ+EPJtcxV8so4ixFn0GVAJGCZNBfyiqVLXKAepS5dhuwOmhrlvl1i9CvtQiQPks
         DIsN8aCo4IC2yISR9lIxL+caLtCA16lKZBl7SOyY0fqCZVdhDUefiEWkyWfaRh4Y2NML
         AuBqeQe6JssvdcGCJrOTocS7+OVvuormUR3qSavjz0XDMiLWKyS8+MBRw4aYF8inFHRW
         jIe55Z1+Nz0MBAygPl5pVbYjdSLjWcMOUb1kvRTJtawAyjCceQ0XJGJCZ0QOTTLLeo7g
         VKLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=AjTbB/3JWjn4jVFfjhiU3qCgrgMBu3/x4sld807a+NQ=;
        b=UgyULlrF/gwaY16qsm3iKLyVu0qcCsUTarlM1BleVwzc934TJAJraBvmzjmh6plADz
         FWLLINwSLOlx2BjJglyMpwbfgmGioBfoCL6U+mvZdw6INa/rseMnjJIJ4SWNFHeZdZ4W
         hCN1z4XzUlqLVbKFrBKHjfFJR4wRzpJKZVWW4Odmz8mHMn4M1xkQWTTMwV5sQgus630f
         hgjjlH6P15vD1wN4ZynYKCXYLrOf8ZbIJ56Y3jjOeSsJ6BguXXCRb2jg51KMSq/JS+Pj
         z4M2RlltRL9dx3rZnJ5Gd5MHiy1tOVOJ0vn1LtfCS2Vj72zEk1OJrEMdv7mJaKlMukOD
         VDvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AjTbB/3JWjn4jVFfjhiU3qCgrgMBu3/x4sld807a+NQ=;
        b=JjRJ1ELvJjCfct2n2fYBPJ9OKS8CU1erhm9w9jhuqT3XZm0n7F6JBC3DY90G4zr+fr
         BJO/bZx3+daogr3748WW4gB22sRds02LdfuaTgKjrWLdKb+7pznXWC5pJ9b82/ZKr+WY
         U06v8DswhTjg8y03IHAS3fONPi50EIozKAfa6vg17eG2RzoWJBsgdyPuAFAZReJc6iwb
         U9fUDMJUZT2u+7I/KIDxNi94ubAwtL5zVbDdtl+7j47hSXdL6UVb9BcKK9UahOl4wI9A
         RY7zO309GaK9VJ3uvgEyog0t/cpeG3XN1AFr+DMzPp+BirNNUhMDzkSDa0tNs/9ffzR8
         RY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AjTbB/3JWjn4jVFfjhiU3qCgrgMBu3/x4sld807a+NQ=;
        b=2dbwvZA1GgtuzucSlef91l9rR8hGmbMvt5bDeVVl+jyhxM8bZQso9OJ+GLOuWA7jVy
         7XVFc0mgNq0wqk7C7EEuj+ZwqMRXtuQO8VKlWXJeuJKu/nbD+X4Pyul/1RgX+0uVZMgE
         duD/t0agXbbPReyiUwe2TxXvv/G0FH5mxOIX4hBrvFbFhx2Gkml0Q7FhelsprW0wTQ8U
         zsq+hd2UWgTmHV421+4kRlKOyZZUqVsvIHofXr8Rt0KeCqblZt473/VX58Q47D5JFHWh
         /Kl0W4xzKFi68D05E3ajD9PqpSn8zF3+F/GL3fuha37NO7YbX/bpreKPMaeswN/BaFtV
         pcpQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531CIrMoh3WJyvVh1LIajVcleYmxo6FwjMg3+AteaTUHqqADK4Zp
	Kfk4Tj3HkTgpjVnXHu4qqi0=
X-Google-Smtp-Source: ABdhPJxP6cYrvujDE/NBSayoSITPg1r1TRPHC92mNxv4AuuCa3WvaZ7xtyzD+nKm8wF1Wxq+B4bmkA==
X-Received: by 2002:a05:6512:314b:: with SMTP id s11mr3905762lfi.206.1634797163278;
        Wed, 20 Oct 2021 23:19:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls2866645lfr.0.gmail; Wed,
 20 Oct 2021 23:19:22 -0700 (PDT)
X-Received: by 2002:a19:4950:: with SMTP id l16mr3743823lfj.248.1634797162285;
        Wed, 20 Oct 2021 23:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634797162; cv=none;
        d=google.com; s=arc-20160816;
        b=zvZ6/cMieLGwzQ1IMX1jUajDCLi4L1p+QNdTwqnpLA2rGJwch0gM6iL9Ua4IwICm6x
         zm254AVANi7k/a+TAcarsN5JCJLNZ/Mp+xGmmEjGV5VCdvjykELbnSQBsg/NIyaSZigE
         q/9SPvIpRbOMKi4awZ7uM21l3OxFnOj3yOW8DcUE19bs7QXX8MWkByTaf9xqFNdmJ5ZE
         3kEgDlEnaeB31U5V6Ah1bD7dQWCQDBt0yWyXQvJjp+nYDG5WcwCCbpmdcdep7DvxPMO0
         okrLaUtVFs+QJ5iklQaY2AZfN52AeYy92aIYc305oLsDuFc9G0KH/kecwI/yxYnS8nvZ
         FuaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=lmdZU44ZGPWHTBDlT+bxdE7VurgHaxNAQxrL0nmMJJU=;
        b=GsKPR4UH1l00mxlDGBb/y6SFJE+X9Ey96ykNZjC3dO4Lb/uA3RiwKDJ0JUjDmBOC8g
         IGznibx1jfcddd2rK8thDhWAGEninw/2NPggCfvQVwUI8zY4iJ9zMQpfvzqKnfod886Y
         5ENjUrU28Z1uZ5CwTKC6OvcJIOeTFA7toLNicC6s7fq1pLpIJqlEyd4Zg3gCCiP+Ot8v
         pjO9vXRJuVfeC7x99neyUjGgBXth7vWm8krbsWT8kfkvYlUCrJgG0ewUVUyEEgSZcDq7
         NIYbaeKk2EgJSLnwHxn1o7J+Dm+V+8p+aM+gPf+8JfkWR/DUXPHRb0N7cjXqFl1tZlGA
         +LVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id z21si330951ljn.1.2021.10.20.23.19.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 23:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 03A19600004E
	for <open-iscsi@googlegroups.com>; Thu, 21 Oct 2021 08:19:21 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 1A5DA6000049
	for <open-iscsi@googlegroups.com>; Thu, 21 Oct 2021 08:19:20 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 21 Oct 2021 08:19:20 +0200
Message-Id: <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Thu, 21 Oct 2021 08:19:18 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Cc: "Chris Leech" <cleech@redhat.com>,<nsoffer@redhat.com>
Subject: Antw: [EXT] Concurrent usage of iscsiadm
References: <4882593.9CP3fYhb5E@localhost.localdomain>
In-Reply-To: <4882593.9CP3fYhb5E@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

Hi!

Another thing is: Whether you like systemd or not: It runs many processes automatically and concurrently.
So it seems wise that iscasadm may be run concurrently. If there are issues, iscsiadm should use a MUTEX internally to avoid those IMHO

Regards,
Ulrich
>>> Vojtech Juranek <vjuranek@redhat.com> schrieb am 20.10.2021 um 08:58 in
Nachricht <4882593.9CP3fYhb5E@localhost.localdomain>:
> Hi,
> I'd like to follow up with discussion about concurrent usage iscsiadm tool. 
> It 
> was discussed here about year ago, with suggestion not to use it 
> concurrently 
> [1]. On the other hand, comment [2] says it should be fine. Is the an 
> agreement 
> in open-iscsi community if the concurrent usage of iscsiadm is safe or not? 
> If 
> it's not safe, is there any bug for open-iscsi describing the issue and 
> potential problems if iscsiadm is used concurrently?
> 
> The motivation why I'm popping up this again is that in oVirt project [3] we 
> 
> use a lock before calling iscsiadm to make sure it's not run in parallel. 
> This 
> causes us various issues (see e.g. BZ #1787192 [2]) and we'd like to get rid 
> 
> off this lock.
> 
> I run several thousands tests with our typical usage of iscsiadm [4], 
> running 
> iscsiadm in parallel and haven't spot any issue so far. This suggests 
> removing 
> the lock can be safe, but of course my tests could be just a pure luck. So 
> before removing this lock from our code base, I'd like to know your thoughts 
> 
> about it.
> 
> Thanks
> Vojta
> 
> [1] https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ 
> [2] https://bugzilla.redhat.com/show_bug.cgi?id=1787192#c18 
> [3] https://www.ovirt.org/ 
> [4] https://github.com/oVirt/vdsm/blob/master/tests/storage/stress/ 
> initiator.py
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/4882593.9CP3fYhb5E%40localhost.l 
> ocaldomain.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/61710666020000A100044B4B%40gwsmtp.uni-regensburg.de.
