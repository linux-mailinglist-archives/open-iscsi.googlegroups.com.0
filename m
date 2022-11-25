Return-Path: <open-iscsi+bncBC6MFJWO34DBBKGVQGOAMGQEL6IT3QY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D81638447
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 08:11:39 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id hq18-20020a1709073f1200b007ade8dd3494sf1828181ejc.2
        for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 23:11:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669360299; cv=pass;
        d=google.com; s=arc-20160816;
        b=eYQkaJDWy4JoIy8YHj3FsTmzYO2ZP8iwS+uNM79CPY+OJRHulJdVnb30um72F+YwLa
         h5ZStAbUkw28FeOdWEqHjmcqNKXVh2h/87pf1LYy/gfjbuNOtHFXbSKursvrNz5JafK4
         JTfSA/avl4T1MQs+XgsxMk4HzOqn0VkanxWY9T2bygWVh8rXwUcWB+k8dAxaTaUMFfvo
         TqIxiTF8r3nA/RBPMSWstwJgBlUwMI8OA9QBH7G4meG+A68WjmGltJHPKX3YzB4WEq+O
         DXA2zizw3AUm8NgEeIXbzZs7QVNfyVJ6xrjtN/DyH10pVSpOXSryNwLWZK0OeVJ5Eiud
         QMOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=Q4qKEROGVgHfNAVYlLwhbdYwv5Ul9UDw8tTSnbz8iqQ=;
        b=sD0ZxVcfGp+Nahg5rJ86syRCg2n0yZxhaNri+4cKcBljNm1g/jozHLGJhaQ9bFa/WT
         AZ1yxnm0JlTsWVsCDxXfyCIJ2vhCsX0z0XXgpN/6E3T5vZWR52vgGuOPAaOeH59dmihG
         esrGlm+zFicIjoU08O5ZDIQPojWTqj5TiHccuUgqCR7J81m9LcACkmcNLeeQuBLlIVYe
         GImLBUylwhnvGolxwXFTDjJgZDSJyyi0jaXt1aThD4R+Z/cyNmbyO7xOZ24T7yIN12U2
         ArW7zap83dTkq8ceTqA4bkJgD9WYsH7CRgSA+78eLfjuv3MeqljTfD2tnxikWGkBn70J
         wzDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4qKEROGVgHfNAVYlLwhbdYwv5Ul9UDw8tTSnbz8iqQ=;
        b=npQoXTTz4NEU0Zz1qTWJvbLuMiOjp0G80bLRYXpfQ3y1jiwdRqKlWewhQqoK3zL8n7
         F/inoYTiV8YfPY8yxCm4/Pa5TB1UkqxmLYXwtFDdNLU5AOcN4fG3qYx6sunQ1w53dNAF
         KeU/smSVmideVRI+UWTnxyFnAxC5M7z0+aIn83nszXUuTul4M4UxGQc3Kmzl4ISw2tAv
         h5Tj0dFazt9OHURoZivmZlA8ffFw+L16GgYG98GLmS67jQB5e9iUR1mQkoBBQ35x9Rs3
         dIvkSw66ao5RlANREB0a3n91WM7B9dl+aYqP6Bghx7RoHaRFsAxxGQ2Oh1feYdc2GJ0N
         7pmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q4qKEROGVgHfNAVYlLwhbdYwv5Ul9UDw8tTSnbz8iqQ=;
        b=xqZ75tpCXypMBYtBRdh02q/ETNKkbTJPxbaP/M+MnYmrF9izPCvtC8q36uwm6X/p6C
         PSslg4N/gY/sZSCVMQaNFg4jz6r5nh4uGSitx3xPFK6degz1BWoZrk70KfoeCzNtIW0n
         R7HKt8+nXvUzevhodoy9j4TopcKgLjA3nodKbj9kF2VrIOjr+LifjuhuVh5wE1baj31S
         aL+Am2BGuXI4l+ExlY5zzg6q/WmSQt5ANp6CQLj66DMYNurWL2OlXUsKudIz+wgkEg5E
         fa2gj3XdgbgUu5EFs/3f8DRFtkYttho5CaBMuv9N+tbYsCHZPGjLGO7aeYtv5dCSs579
         J6cg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plkuKB4nqcMoZHEa15Qlam5hCwPnIGOkbKmlg2ot9vK5Xc2wEPH
	/N1dSwOQN/ey/gG+buoVtOo=
X-Google-Smtp-Source: AA0mqf4k4ywyx1H0TV2k6sO6MFK/Nnl8dyU9gYVHdkZJ1BACdaiigE6CYzqWxYMstg7fBQyx8uJm8Q==
X-Received: by 2002:a17:906:a843:b0:79e:1059:6d65 with SMTP id dx3-20020a170906a84300b0079e10596d65mr15032928ejb.695.1669360298924;
        Thu, 24 Nov 2022 23:11:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:5202:b0:457:99eb:cba9 with SMTP id
 s2-20020a056402520200b0045799ebcba9ls2994926edd.0.-pod-prod-gmail; Thu, 24
 Nov 2022 23:11:36 -0800 (PST)
X-Received: by 2002:aa7:d74c:0:b0:461:b952:8932 with SMTP id a12-20020aa7d74c000000b00461b9528932mr25335700eds.104.1669360296142;
        Thu, 24 Nov 2022 23:11:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669360296; cv=none;
        d=google.com; s=arc-20160816;
        b=g1CvTZ8i0Ia+KLi8bW+PbCfvjcoL94R+uDJXGWQn88cM/t9mbdv4xcNHLvMzrDL1pL
         Z1gpHXSL+UiX9u1w+30VyMD8uffF2NtTd3YPQY1zC2qI1xzhOPUV+t6OkeHilYuZ7vr9
         WPWL8peEX5l0aLjRSHh+8lQEkFDDkGU/hE7lqb0r9sSZ8BebwSQCK0Ro0Wh3TrGSAySz
         EndYdHuzdzhDF22++iFW2/rL+JhaitpDCjHYy2SJPIvddQ4+qTmCs79sXJK323/9880q
         kOaO1b/FaviAiR0RbAheh4C9CmjbqcSvzN5E+Jw/RYzj/Ecy2+wfktPaoq462snDMYKb
         ZNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=99uqu3jm9WjoKJrlNhKPW74/AWh4ksTZFnMeBy87Djw=;
        b=hfocGV95e3UIz2ZVYjcrurw7xf4yk0s38v2PbX1nnrDBd1Fvb2i82Ski/hJ+ACxRJi
         f7ZV8mBWFZzYmREJNCZpeitYoKiOs2fRxGpgubzEt5STUOYCgedPYdcl+0N7l+bZmf48
         /XJCYOwBrq+H7mzwEHwUhEFShMtpH2pjGwARn2LF/1M/X3nMoAk3iaIttHPeEmLmHslO
         MQWH6G9xic2Qgy4yhjdOFL+aRslUzAxcPhSEyagBeN1UffAGEyHaPXbJ8CqsD1AMq8a6
         3CvVDoac8rB62vAlLqGbdXZ8WCap5uUbmeec//3D9vt/tJx8alGsOqRk1EZvYWnfUfOj
         cTyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e79])
        by gmr-mx.google.com with ESMTPS id d26-20020a056402079a00b00461ad0b1dc0si151521edy.3.2022.11.24.23.11.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Nov 2022 23:11:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e79;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4B002600004F
	for <open-iscsi@googlegroups.com>; Fri, 25 Nov 2022 08:11:35 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id 28E75600004D
	for <open-iscsi@googlegroups.com>; Fri, 25 Nov 2022 08:11:35 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 25 Nov 2022 08:11:35 +0100
Message-Id: <63806AA5020000A10004FFC6@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.1
Date: Fri, 25 Nov 2022 08:11:33 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: Re: [EXT] Re: [PATCH] scsi:iscsi: Record session's
 startup mode in kernel
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <637F4209020000A10004FF7D@gwsmtp.uni-regensburg.de>
 <2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n@googlegroups.com>
In-Reply-To: <2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com> schrieb am
24.11.2022 um 16:30 in Nachricht
<2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n@googlegroups.com>:
> On Thursday, November 24, 2022 at 6:06:09 PM UTC+8 Uli wrote:
> 
>> >>> "'Lee Duncan' via open-iscsi" <open-...@googlegroups.com> schrieb am 
>> 23.11.2022 um 17:47 in Nachricht 
>> <0f7258d5-ff8e-fa4e...@suse.com>: 
>> > On 11/22/22 20:41, Wenchao Hao wrote: 
>>
>> ... 
>> > Again, I don't believe that's correct. I will test it. 
>> ... 
>> Maybe a session capture (via serial line or so) to show real facts would 
>> be helpful for the discussion.
> 
> 
> Sorry, I can not understand this, could you describe more detail?

Wenchao Hao claimed something would not work correctly, and you doubted it.
So it would have bean easiest to demonstrate the issue (by Wenchao Hao) by some session capture starting from kernel boot.
That's what I trued to say. Probably easier than believing or not.

Regards,
Ulrich

>  
> 
>>
>> Personally I think that information the kernel needs to continue working 
>> (e.g. the mount table) should be in the kernel. 
>> Maybe user-land tools can manage the info there (in the kernel, via API), 
>> but the primary source should be the kernel. 
>>
>> Regards, 
>> Ulrich 
>>
>>
>>
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/2d0439ba-7fb7-47ef-b52c-a866dc0c 
> 86e1n%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/63806AA5020000A10004FFC6%40gwsmtp.uni-regensburg.de.
