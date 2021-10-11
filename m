Return-Path: <open-iscsi+bncBC6MFJWO34DBBMVWR6FQMGQE5OW4TYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 433354286E5
	for <lists+open-iscsi@lfdr.de>; Mon, 11 Oct 2021 08:35:31 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id d13-20020adf9b8d000000b00160a94c235asf12434627wrc.2
        for <lists+open-iscsi@lfdr.de>; Sun, 10 Oct 2021 23:35:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633934131; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2DeT7R2anJUAQ69GSc9nae7jHl8GmKl6Qnfv3/6TkeWYjRHStC/EtXsXYB4N0N/8+
         ujd1JQDo8Kjt/Jn2jGOKi2v4Zg8oUN/WiQpp6mZmPdEAWygp+iYSo2z2ToXCKr9xrqXn
         LgNIYpggds9pJi9j+MLrwk/byYtt1l0VQCJWLYt9NyQGeJQGYEH+m4hcyfgcX1YHUW+u
         MCi/VH0gN4F+Z2yc3LE75DbpyQQUaP5lC8D4312c+uGgm1DKkROiV+n0E2LBc/TK/Q2P
         uzGuNxjzCUSCKL60rOVfX+750/zEDcqi76Q/r0JMUOz3UVH6lNDaRKMq0DzeYolEJhGK
         kT7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=lNN4HLEnjo/d6bxkOs/oDUPci+76/c+TQjpO2ufY6Vg=;
        b=CosJC0lXPDEyBrJXBMAyjiBEHVo+VjWTmHWYEeJeaSGWPjIupErMVi86HNpxY+S+iF
         BFMagHzJ6AL1ApToenLltdPL/iSvxVt6Jz/l/3BxI6JufsbYBApe+wLKwNIxDBEjCaFj
         AR2FnJF19nXunmdYtB4jJARWLi/0q7vXTkoRUj4/dGwZ+qMhaoHCmovmRIhtyRxVZTfg
         k4H/YPpHLGeh1KhM9Fpl+zbe9UHFB8SW0l177wmqAkVQ4d2p9W1WbUbWQUh3AoTVyy4v
         VjRxTe5R8Q4BN9LQTAX4y9uk4O3n1NjPepiKLXtTWRvvd7v1utgntelDxsLUDKEkmvUX
         PY0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lNN4HLEnjo/d6bxkOs/oDUPci+76/c+TQjpO2ufY6Vg=;
        b=X4NvF9HLkN1r4joU+95zpQ8cr307av+gohBwsdfYnSK6VWxCGzmQeaHajVHcNokoJJ
         ldRqB5sAB9XfP24x3Pd9sl46PzZjWToIM3nm4zzCfWFScVqIyrqPONDLhUd9AgZqFK3k
         2JOW9eZWZ7xZYWD05Urlsyc2Dw+9YmK5LhRwe+i8Fr/AgjThkBNqTHpKaj9Vh7YcVDur
         DJ7ecz04/5p4XADRzveVYcNfeL92x85PpAUjzuGUUjfuD59JEez+dPor6gFd7T+uYtSw
         6h1ImHhZrJkplGoEDOR6J00A6S1Dd4h4ReC6TdAonHdVlaz8EScekrSkXmnxoasJPO/2
         lu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lNN4HLEnjo/d6bxkOs/oDUPci+76/c+TQjpO2ufY6Vg=;
        b=TGhxOKoaIEwCVMs6zPRlH/A5FcO5GRc4hpQONRQ7bVs8oXv+0XKjH0/urTon7/6Xaa
         0mRPxmHfkRNjN/G2XGDPB/IrkebyNDnP1k5KMvojZdASuwcVl5g3PVPIP5i3/Rp1RqYw
         zc8QqmKGrFeQMJcNgvGliCgOUjO0l3whcrhkGGZXmz8rNpfyJzMASnnkq1RqHqDC3zkC
         YiZ/lN0ctx0MJDmqzWz0xv2hAnjkDkSHanzyY3OEhzNLQp1U20SCxHgYzpvNQC+NM6Eq
         hPw7Jx+57EIRyJDrEG6gtGoWghA87aOcYeq9P8eOFnUgAZ3iyyy93ZxxgqTG9WGFgeB9
         8GsA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532G4bns4eZbG+DWZngAejGR5Tc3vmuY7K2mc4Bi8zSy7uvr3vVk
	3vfjmDmm2WUnpSPIz8KWWS0=
X-Google-Smtp-Source: ABdhPJxSba5Sd7vtjifCM6IG3TMSGeWeLFpCafriCHV17T0dQiiDAh5+rBv26pU33ZKXFS6BeFjTwQ==
X-Received: by 2002:adf:8b47:: with SMTP id v7mr22588683wra.321.1633934130999;
        Sun, 10 Oct 2021 23:35:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls4687755wra.0.gmail; Sun, 10 Oct
 2021 23:35:30 -0700 (PDT)
X-Received: by 2002:a5d:6982:: with SMTP id g2mr22491953wru.51.1633934130046;
        Sun, 10 Oct 2021 23:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633934130; cv=none;
        d=google.com; s=arc-20160816;
        b=OdixMCX6wOOOUcF9hhCk9cNTorKB39QA6XhTlk/8NR3/uP03oUaa/MBJBK/k1HdxdO
         u+aOLrXtNsiClRH7w0SlWCV3zrXyB/S1oXIWK8/vcTqnYV8ziXkF6F3SBWwdUwt3Tb2m
         rPeO8N2yBVTEsSzVxi2oFhAh1lIELNF+okocPhYzjWU3kvSDBqz4rQNKLUugZhH9vk0c
         XE51k9UBxn+3aW1hWBR5Bhm0x7U3wiiAp8yYO91lrB4qjWcUNdkE2Mmu8KnCt3MQ+BqU
         sHZcpBIjj5br4s5dm3iMU33ci9w7Wi9YlGCxcX8+YLMN6FM8NoI66YOxTBa6cU3WBPZs
         DvAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=+RgB4j5HlqJKzkzJjdiCrXxJPE7dgW4N+se/3zU9juI=;
        b=FmRHHtLuX0U20JuZSnlfmz5BJbLW0s8MwQU2D65Yz2oWFR5HmslgEwu9MqBi08haAO
         djO3RJ7Fz/DOswjLb9xpm68E1UTyiki5fYXYpyy2g74DY2ZPEQ/FwhG8+4fyagXq0zvk
         Pdls2/7CvvbxD6RBJ2sJ6dYUl1fvlslw4J777b4qAoSQ3ywzSNPFYlIPoMlimQEYOvMt
         NJ3fda2tc7m0sWdnzvO0X/xRTLivDEl8j1r3bpWVMlR4VmCG2z51wuT8V+ypYOCvNYr7
         82+vln+pMaA+/jGrbk7/LJTkJ72kFhejlmO5jCBbl9/LCa//e+Qln18DXR0e2L6L7HL4
         YG0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [194.94.157.148])
        by gmr-mx.google.com with ESMTPS id 26si246904wmk.0.2021.10.10.23.35.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Oct 2021 23:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) client-ip=194.94.157.148;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 6EFBD6000051
	for <open-iscsi@googlegroups.com>; Mon, 11 Oct 2021 08:35:29 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id 3DDD2600004D
	for <open-iscsi@googlegroups.com>; Mon, 11 Oct 2021 08:35:29 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 11 Oct 2021 08:35:29 +0200
Message-Id: <6163DB2E020000A1000445F1@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Mon, 11 Oct 2021 08:35:26 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <jejb@linux.ibm.com>,<martin.petersen@oracle.com>,
 "Chris Leech" <cleech@redhat.com>, <qtxuning1999@sjtu.edu.cn>,
 "Lee Duncan" <lduncan@suse.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <linux-kernel@vger.kernel.org>,<linux-scsi@vger.kernel.org>
Subject: Antw: [EXT] Re: [PATCH] scsi scsi_transport_iscsi.c: fix
 misuse of %llu in scsi_transport_iscsi.c
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
 <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
In-Reply-To: <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Joe Perches <joe@perches.com> schrieb am 09.10.2021 um 05:14 in Nachricht
<5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>:
> On Sat, 2021-10-09 at 11:02 +0800, Guo Zhi wrote:
>> Pointers should be printed with %p or %px rather than
>> cast to (unsigned long long) and printed with %llu.
>> Change %llu to %p to print the pointer into sysfs.
> ][]
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c
> []
>> @@ -129,8 +129,8 @@ show_transport_handle(struct device *dev, struct 
> device_attribute *attr,
>>  
>> 
>>  	if (!capable(CAP_SYS_ADMIN))
>>  		return -EACCES;
>> -	return sysfs_emit(buf, "%llu\n",
>> -		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
>> +	return sysfs_emit(buf, "%p\n",
>> +		iscsi_ptr(priv->iscsi_transport));
> 
> iscsi_transport is a pointer isn't it?
> 
> so why not just
> 
> 	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);

Isn't the difference that %p outputs hex, while %u outputs decimal?

> 
> ?
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/5daf69b365e23ceecee911c4d0f2f66a 
> 0b9ec95c.camel%40perches.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6163DB2E020000A1000445F1%40gwsmtp.uni-regensburg.de.
