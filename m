Return-Path: <open-iscsi+bncBC6MFJWO34DBB77GSSFQMGQE6PAMUCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E370C429E46
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 09:04:31 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id i7-20020a50d747000000b003db0225d219sf18110720edj.0
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 00:04:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634022271; cv=pass;
        d=google.com; s=arc-20160816;
        b=nu8tXDewc0VlaDnqbHI2qgaWcJPHZ+zeWIrKxHeu11Zbs8u29/NjtLLTr0loECz8l4
         8Lu4YImWsufvGM2TgyqUbo/fgU/eiLMUStzTVrArkXe2FCaV39EDMh5/exNRfqxZcEhQ
         fU3WlJthNChw8UXXyAKsyb9m812dru6GaMcRdBCL+NzWXkDaxGPibAY3egYyB42x+Nbq
         6YE/Za7SCzFADXq9aAaGiXxvHnlGmswQalBTztlhDg/O9sCfjGfczjtMDqgTiknXyXrf
         X9/0p93vmczY+icIZC0LSrfTRC/Hw+kF9L41YdliMlD1nJRKR4vPNtW5rsH/uWuskvKs
         divg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=UidV8CiYK7TA2ukmNVDhk0XuHay0xPvizmqJ+j6hOZ8=;
        b=DvFSi6Ry/qV/XdTiCpm1x4+9d1JDFsU4uBgSfjT/U7d9SH1D9XhH0ZbXQErBG7gw1y
         gW9p/gzGTUnVW70mQ3uWtJyU6/JRBaZZnPQwrzoeG5oWl8K9bUkK5/nIySwlJFNyNrBJ
         IPEh727Xaa7CfjkM5pbam2faSkJOale+eK/63CFYi1OuWSHhZ3W/pxSoWQ93jTFKo+ds
         8PK4KMwdf5zquA8hD9YSCGSo2mu4ys7WQIPI4T8xQCNAeR/dK4dzc36BiFMTTr56JiNQ
         rSnWJZxXrdfDMtJeYEpCKtHPHpF285QRzFKsq1+ki+sAK2APv/QOra8liCkl5IIWdFS6
         4TnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UidV8CiYK7TA2ukmNVDhk0XuHay0xPvizmqJ+j6hOZ8=;
        b=oLpcG/CKL18uLRajX8zw6Ys7+WGjX12PxFG2vzneoCyjCinlv5f6Ktbf/Zrh4uVsDn
         lOn+setu9ILyNqHkpi1hcBuf8hmY4qZr0Jmg8wATS7Elxrcwo+P63LlPG/tQ/SdaRlNH
         0qoJYSpIoYQrVRndKQ7nlYjzj3EUbd5hXvajzWhzbsIiNPtfVEWQTZgK/M7Ozbb7q0uy
         BuLarXgjiFInOXj22mzMY+sm9xJpNVLT1lTI8a6l5folNnmmzKyZzQ1R+HcN+AEXGpSF
         iTiH0oWog84ifNVWR9uJ/i8lvYFZbj9Ii2Qn09yxD4b9nrnLMzjOY8JLrbPnQC7EPZgQ
         Mvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UidV8CiYK7TA2ukmNVDhk0XuHay0xPvizmqJ+j6hOZ8=;
        b=SS76W2yVBaaHjCUQoF+HdQayjFkrH9BEmgkiFw+28lZ23l2CQ25PKaAaIvx+uQcM4Y
         qo9UydPIn/8aKn0LdaeYvOaefCCritUyGO4O1Q2p3xG9F57/zQHzGAb6Ao4iNKHMASIs
         YaDpbTELX1pCDHHTRV5Z5MA4YNKQTpGlth71NowMzKlpHJkinmWyUx/DqCda/Ig7Huon
         UGQnlCfWa7kp1Zdj+jP0/dPFGWhaYrnxp6QwuxXcVBgsBm7slIsM4oLAYRULYDVI6Gd3
         ABLZD8ymldMPentqcKxcjiXB9B2YG3dNKooeC+2VBJYFVI/YFXZZZej6CYYVKOontdwT
         9yhg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53355I2LYBovryV59Ra1/PVoU9+WifGCgv8nAWGaK754GJGndA0I
	ZeKGLBkQX7sRsQn7zHZvUiM=
X-Google-Smtp-Source: ABdhPJywuW1FY1JoAJVUTwCEII3GwsFKA0g5v7l30NB0DYMQCy1yoccEXTWVqyvkAm7DC9qP5DgAkA==
X-Received: by 2002:a17:906:cec6:: with SMTP id si6mr31846005ejb.270.1634022271659;
        Tue, 12 Oct 2021 00:04:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:8d88:: with SMTP id ry8ls3210885ejc.6.gmail; Tue, 12
 Oct 2021 00:04:30 -0700 (PDT)
X-Received: by 2002:a17:907:984d:: with SMTP id jj13mr32781086ejc.211.1634022270742;
        Tue, 12 Oct 2021 00:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634022270; cv=none;
        d=google.com; s=arc-20160816;
        b=jwp+XQucnE5j4ICqW+rjykm3l3orwFSu0i2K2QHxDxrkUPtUmfKSQuoxZl4RTK2hsc
         wmgZZNH6yhzmneV9jXBVOJTUNSl5b/GnTdO8/VsBGyb7+cG2A/KFzosiJLtO6BpUjMsA
         Jdc+2Wn6DcTM4f3Nqcc3Llfq9L9oeqn6db+MLatvpRiIXuqo11f7431cSVia+72GAVxv
         yfMZHAJGSISHj/6uQ9oJlFdYeT9UAY8wep3IjZdwtbxE5wh7RERzTr7KX03iKiAu9al0
         CgqREHcqgl9mx+/o1wbGJrjToiHDxZb1yLEiRaKlroT3e/SxHzcpH7qD6QAZav6uNOgG
         FSfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=oI33F8DqWhBhVd53Yes5ydSsoiphDIfDmJh1/F6OmQw=;
        b=VSwPoW6EPrUh/aL0tyNI4Ug26dDKri8bLylHVhexMR02J0Xh/ZmOS+/wQLLlZD4vCZ
         1o68JWUPI6RW2os8cHpYKA9UzTpnQqYkbF5fIwHJB7p4aXzkLCG0Xcko5mVaHeew8sWe
         vVSgSvm5MXHCj16pQUpJEO7l6/zzBDQC9Mrvt1Y6wsfjBI4a+frNgoi3/oug9FaE6uha
         8aPOJNoDQLTX0/a71ZEd73f6RZr2J6XYP1QCYdvcpGOZx9n04mWYM6mFiAlbTQZxfP1v
         3QkTc1pj8FPt4yw6jOQ8t2eU9O3p6qZ5LlyRzQdZvOzLuNEd2lZ7tpjFEJb6FYPEcERO
         uAPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [194.94.157.147])
        by gmr-mx.google.com with ESMTPS id 6si340265edx.5.2021.10.12.00.04.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Oct 2021 00:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) client-ip=194.94.157.147;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 09CDE6000050
	for <open-iscsi@googlegroups.com>; Tue, 12 Oct 2021 09:04:30 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id C5319600004D
	for <open-iscsi@googlegroups.com>; Tue, 12 Oct 2021 09:04:29 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 12 Oct 2021 09:04:29 +0200
Message-Id: <6165337C020000A1000446A6@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Tue, 12 Oct 2021 09:04:28 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <jejb@linux.ibm.com>,<martin.petersen@oracle.com>,
 "Chris Leech" <cleech@redhat.com>, <qtxuning1999@sjtu.edu.cn>,
 "Lee Duncan" <lduncan@suse.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <linux-kernel@vger.kernel.org>,<linux-scsi@vger.kernel.org>
Subject: Re: Antw: [EXT] Re: [PATCH] scsi scsi_transport_iscsi.c: fix
 misuse of %llu in scsi_transport_iscsi.c
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
 <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
 <6163DB2E020000A1000445F1@gwsmtp.uni-regensburg.de>
 <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>
In-Reply-To: <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Mike Christie <michael.christie@oracle.com> schrieb am 11.10.2021 um 17:29 in
Nachricht <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>:
> On 10/11/21 1:35 AM, Ulrich Windl wrote:
>>>>> Joe Perches <joe@perches.com> schrieb am 09.10.2021 um 05:14 in Nachricht
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
>>>>  
>>>>
>>>>  	if (!capable(CAP_SYS_ADMIN))
>>>>  		return -EACCES;
>>>> -	return sysfs_emit(buf, "%llu\n",
>>>> -		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
>>>> +	return sysfs_emit(buf, "%p\n",
>>>> +		iscsi_ptr(priv->iscsi_transport));
>>>
>>> iscsi_transport is a pointer isn't it?
>>>
>>> so why not just
>>>
>>> 	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);
>> 
>> Isn't the difference that %p outputs hex, while %u outputs decimal?
>> 
> 
> Yeah, I think this patch will break userspace, because it doesn't know it's
> a pointer. It could be doing:
> 
> sscanf(str, "%llu", &val);
> 
> The value is just later passed back to the kernel to look up a driver in
> iscsi_if_transport_lookup:
> 
>         list_for_each_entry(priv, &iscsi_transports, list) {
>                 if (tt == priv->iscsi_transport) {
> 
> so we could just replace priv->transport with an int and use an ida to assign
> the value.

I'm not in the details, but if that value is used as an ID, shouldn't it have been something like "ID%llu" right from the start?
If so it would be rather easy to use "ID%p" instead (if the syntax of the ID is left unspecified). At least nobody would treat it as a number.

Regards,
Ulrich


> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/ae7a82c2-5b19-493a-8d61-cdccb00c 
> f46c%40oracle.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6165337C020000A1000446A6%40gwsmtp.uni-regensburg.de.
