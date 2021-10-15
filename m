Return-Path: <open-iscsi+bncBCUI3SNGSEMBBBW7USFQMGQEG6TDKSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 182AF42EA4F
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 09:36:40 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id p8-20020a17090ab90800b001a094e12f18sf4585093pjr.2
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 00:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634283398; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q3N7CnYtmaqZk7KqG4faDLNS2cd6UNOKzyO0CCB4quYbF61ucgUDQm/Gu1bqU2lsuz
         RluVG+K9FTvwBjAXuPN36k3OgXMzX353+llXxztdPhHEmw5Ku+KecguRdzZR1IWcOi7U
         GIDEZ9pbEa/tNv8cIpyO/kPR18QA0wlAGCTYckIOD1zeP7bSP+8NJ1/bAXRc65NoVsSv
         jbgq/ySpsX1CyQeE+MaxtRst6UIczU2qIMnY0mkvhr2hMXifdAbMNta/UceVN/bg+CzF
         QvuDZuoTvaYVgVGCAVo3kYMuz97tKifPFw4xpdViWkVP9G5S9zbBZD69d9yHF0s+vM1A
         gFwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=DM/g5EhJ1yoYhrZ3tfsm8nN9BViGDyOyX86nshmCZYY=;
        b=FHAVPyoJRGTm6zqDtFuty/ZCydSp7ike4a2cNLQPHcCfjFbL7FNIy2uqWl4Jc9Audk
         w60ipb3hLBpNkh0HFK2ha/6NjeigMssaJ+y/Ptds3JlRZb2LJHIQRYrn3EiTr+RkDh1C
         ZqrDPKtbdr/WGxzXp3jJhUqq6ivgX2RIR2vcWLdoj2QbnvVbKRb6XPhMBumnSvTSvPvn
         OFXDBncTiPEXLFEMUAoDertmHjsi56ZdE/3qeTpTngL6h8dZRU2Uz6VINxlUrIlNYTv3
         EBsfqPV6ubAfZI4pAjL18fJCC7KqTPrdzphwt6ZT9dVH1qo73ta0oPPr8QBKyF5xnhty
         5bdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DM/g5EhJ1yoYhrZ3tfsm8nN9BViGDyOyX86nshmCZYY=;
        b=k/Lb3aq5P864pUelPrW1avi9Qe7jB6F1cal8LMtXz3Bwkm15jKDRi6r3oT/kshlrNM
         yiDv02e8Mb4zhjUroVhIdpZ3ME3XFDUrKwv2iekprb/feOY7VEoQmPkV8dEk+KLzbH7z
         bgAE7UV/MMnr7ztUyDqUa3BBRdB/lnMMZD44rvhCBsdVrei0+ljGhwc/6dDx6+X1/XjQ
         BmPa1EjT8uVUgjxcbjzDV4exNXG9aF0zdOypWSYHX4CrIl6FYAWg32sKJ4CHIoatyVR4
         2L9ujF2vR9W2aBIm6v/xx+YM3WPcWjz5fzziEUpBuTz8zfuDfqewej0cuJtzmZn8RjWy
         Iacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DM/g5EhJ1yoYhrZ3tfsm8nN9BViGDyOyX86nshmCZYY=;
        b=opUuspH8Iyb/eRcZ8N8ho/an6iCCyLkN3xBzXh493fPdDjGdcUIae5JDIQYAuE6364
         MFZWDw9p6+WTY/IiffhL3OVAZIoyMlh1Fsq1/klrRVBtGEjyJwcq1ezzi8WtP5PI4INg
         Ksa3RK6ZjZ0WSQOLX4bX783t7BIo7KdZWTAcpB4BSOis34KhaqXbHD1RjDkE31WyyW37
         FWjhGNWndCqGOUrLcnFMoTc9N1dhRZk+VpNKsMnBcwerhtMfPzQ3eUqoJV59J59K1//p
         tIDs9X9T5dtOcmHHg3rhubZ9VQ/rkdwrDuqr5yQ9XdsKe011tm/fgSyOTvTMGY/2+pP0
         a/uQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530uhE7DUL5gs3esodsDCXh8aTRZEZBtVdHymo5e+zUYBZW0WDVZ
	wubWFYi3e7G06XG0HZE6J88=
X-Google-Smtp-Source: ABdhPJzRgEQhwBKcd9VjjeniP4+47mXVsVYV4XplqJ11L3t1hO8dWt54fFPEYQPpQ9EqaKecrorRNA==
X-Received: by 2002:a17:902:b20e:b029:12b:fd6f:44c3 with SMTP id t14-20020a170902b20eb029012bfd6f44c3mr9786204plr.36.1634283398534;
        Fri, 15 Oct 2021 00:36:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:188b:: with SMTP id mn11ls4523283pjb.2.gmail; Fri,
 15 Oct 2021 00:36:38 -0700 (PDT)
X-Received: by 2002:a17:902:e801:b0:13f:255:9db5 with SMTP id u1-20020a170902e80100b0013f02559db5mr9563087plg.23.1634283397910;
        Fri, 15 Oct 2021 00:36:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634283397; cv=none;
        d=google.com; s=arc-20160816;
        b=dO1jYtMc3NUjOgStE7edr21Ozq3rI8IYQboI3SsS3+G0TPjwxdZ/aJxQKuWRkAoQsA
         E/wZo3xM3y1nRer9BKjlMdNIqvp83O/RaWhhs3RPFMjqblRzKYBFiie57ZiQp6Oa1qlR
         vKlyeqPbz7HRsgzt9+o4dmYZNvFSMxjj2tb1oBdH+ElOf4D4JyOZFqaY5oOT9YSHyPJs
         xo9Io0uewefiAa3HUqd2vN7dRWmfB/x6M9pFjjAdEzOgLNZyZamDC5JZx7Quw2FGdDIg
         MoXW8Vecx7+PCqOS35KX+rpBYuGoBmrNbjipY5oQCfHLzQyab0eE6yrFE9h/8a64yaVC
         1m1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=WsNGS3Fsat0CbE/X8xDFIJvBgK8k9JoHLcjgkYf5ZTI=;
        b=SuTbQWWTYT2Ft7TA7pi0w0WHjlPO4CBAnc6I9VsW3M/Gl4NDlhv/i5XF+eN+1IbA9b
         ecFFlbXTmK+KjS2FaP9J8A+NVn1jjG19sb2U+1bTbiDdIwWTbZai5stmuaVOt/TJRPAx
         rxSJQqA60ETSjk0jjipi9e9hOq4cxFju53lY0RXVivpNrhCd0mI9MGqV3pO5aBHI+8DR
         AgRBDh7Hm9octZr3ZG1B5RGf2XgTM8FhYOSkKyrXSZJs2dAh8GAq8cUGw6yLXlConBRi
         h/DuHV2AzWA6WGxdzmfHEwmHKKQmVvpAhqbGOe+BJZR7GfAUsQRV1JDt+Lf8rjuBPYrq
         WMyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Received: from smtp181.sjtu.edu.cn (smtp181.sjtu.edu.cn. [202.120.2.181])
        by gmr-mx.google.com with ESMTPS id mh15si994233pjb.0.2021.10.15.00.36.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Oct 2021 00:36:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) client-ip=202.120.2.181;
Received: from proxy02.sjtu.edu.cn (smtp188.sjtu.edu.cn [202.120.2.188])
	by smtp181.sjtu.edu.cn (Postfix) with ESMTPS id D20AF1006D5BA;
	Fri, 15 Oct 2021 15:36:33 +0800 (CST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by proxy02.sjtu.edu.cn (Postfix) with ESMTP id ED7E6200B8924;
	Fri, 15 Oct 2021 15:36:30 +0800 (CST)
X-Virus-Scanned: amavisd-new at
Received: from proxy02.sjtu.edu.cn ([127.0.0.1])
	by localhost (proxy02.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id D8EEzls3b3t7; Fri, 15 Oct 2021 15:36:30 +0800 (CST)
Received: from [192.168.10.98] (unknown [202.120.40.82])
	(Authenticated sender: qtxuning1999@sjtu.edu.cn)
	by proxy02.sjtu.edu.cn (Postfix) with ESMTPSA id 220EA200C02C4;
	Fri, 15 Oct 2021 15:36:17 +0800 (CST)
Message-ID: <6772c5ef-4666-e2b5-2885-797baa939b45@sjtu.edu.cn>
Date: Fri, 15 Oct 2021 15:36:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: Antw: [EXT] Re: [PATCH] scsi scsi_transport_iscsi.c: fix misuse
 of %llu in scsi_transport_iscsi.c
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>,
 Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>, jejb@linux.ibm.com,
 martin.petersen@oracle.com, Chris Leech <cleech@redhat.com>,
 Lee Duncan <lduncan@suse.com>
Cc: open-iscsi <open-iscsi@googlegroups.com>, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
 <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
 <6163DB2E020000A1000445F1@gwsmtp.uni-regensburg.de>
 <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>
From: Guo Zhi <qtxuning1999@sjtu.edu.cn>
In-Reply-To: <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: qtxuning1999@sjtu.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as
 permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
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

On 2021/10/11 23:29, Mike Christie wrote:
> On 10/11/21 1:35 AM, Ulrich Windl wrote:
>>>>> Joe Perches <joe@perches.com> schrieb am 09.10.2021 um 05:14 in Nachr=
icht
>> <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>:
>>> On Sat, 2021-10-09 at 11:02 +0800, Guo Zhi wrote:
>>>> Pointers should be printed with %p or %px rather than
>>>> cast to (unsigned long long) and printed with %llu.
>>>> Change %llu to %p to print the pointer into sysfs.
>>> ][]
>>>> diff --git a/drivers/scsi/scsi_transport_iscsi.c
>>> b/drivers/scsi/scsi_transport_iscsi.c
>>> []
>>>> @@ -129,8 +129,8 @@ show_transport_handle(struct device *dev, struct
>>> device_attribute *attr,
>>>>  =20
>>>>
>>>>   	if (!capable(CAP_SYS_ADMIN))
>>>>   		return -EACCES;
>>>> -	return sysfs_emit(buf, "%llu\n",
>>>> -		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
>>>> +	return sysfs_emit(buf, "%p\n",
>>>> +		iscsi_ptr(priv->iscsi_transport));
>>> iscsi_transport is a pointer isn't it?
>>>
>>> so why not just
>>>
>>> 	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);
>> Isn't the difference that %p outputs hex, while %u outputs decimal?
>>
> Yeah, I think this patch will break userspace, because it doesn't know it=
's
> a pointer. It could be doing:
>
> sscanf(str, "%llu", &val);
>
> The value is just later passed back to the kernel to look up a driver in
> iscsi_if_transport_lookup:
>
>          list_for_each_entry(priv, &iscsi_transports, list) {
>                  if (tt =3D=3D priv->iscsi_transport) {
>
> so we could just replace priv->transport with an int and use an ida to as=
sign
> the value.

Taking security into consideration, We should not print kernel pointer=20
into sysfs.

However if this is a special pointer to lookup a driver,=C2=A0 It's really=
=20
tricky for me to fix it,

as I don't have a scsi device to test my code.


Guo


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/6772c5ef-4666-e2b5-2885-797baa939b45%40sjtu.edu.cn.
