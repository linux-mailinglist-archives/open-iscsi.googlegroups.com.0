Return-Path: <open-iscsi+bncBC6MFJWO34DBB7WVQGOAMGQEKX5DJWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDA363844E
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Nov 2022 08:13:04 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id l42-20020a05600c1d2a00b003cf8e70c1ecsf3767617wms.4
        for <lists+open-iscsi@lfdr.de>; Thu, 24 Nov 2022 23:13:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669360384; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpDdy1MSON8GnaalMDDW3uRfCgUM+TS9EIhKaeKq6pHqN0Q9lPR/D1lk8gCfq/eJD4
         sRjgYDfC4xEFNNQXEogST582KIw5JiaBoekirV0PUxIlS8EmeVz7pnaNivrxG1K5QiqS
         vgSI90pR0WIx5CdvnFitOT0Gjy4eMMsaBz/CV+79KbtAx+OtVrbrmdqFJQKC9Auc9Jio
         7ljPqazKZQlbUg1CvvoPJZxqjRED9utRj7lCskiEB11mdB3dBP90RVwTE/Iktc9eGRTI
         i2gDEaTJe5YuGWT7EKtnZbaFRx35ClxL3KDkpgdv80xRM3E+s0ipfxHDQ691URZ+e6xa
         HCdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=jBo5gevQuYPZEnrkMT/5/1FaOq1EZDSxQftkELhCHpM=;
        b=iRtQ1dAGslqhnFvLzym0KLTHstsaGJLynhm1q+VPR5QEBp0g4GXOiE/eNxyzLY7UN0
         hp1Z6QgMmQZBNzTvOYxQR0wUSlZ8yhd3nCfFc+On+Fsq2RJ0OR7vzz9qzPOG25tfDwIX
         vYlRYmvoqG1qcg6b+TlcS9zZH0SPRKnoVTvYcBMaHn/KWpWu/uTR2Qw1eshQJ4OtKVuc
         q9IJexsDADjZ2LNINdO4ujGBhp+KPyGlt/odN8EOaI1sKSWivYndKhj3Hbf53J3jOvdB
         mCw67p88qZ2srH25uEUhmbIa+naVWsOaYYmnvt/UluzseUdTBe8sEY9fmU5HNWHQmzE4
         Xahg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBo5gevQuYPZEnrkMT/5/1FaOq1EZDSxQftkELhCHpM=;
        b=hPbTuocit82qj4r4TWZrpqSsFAuIaO1HGaJPJj9kYhbYLBmOqHz5qbporBQjfdEr/s
         ih7Yb4BJUEGbu34tMKNaOneXLX16qAitLBs4uh8Vio5aii743Rf87jcaZDxHABv+yHMd
         vZl4ynqu2M6PEEGma0KVxr6Z99UmbZWaVe6SFq6BQMkRVOpea+z7mox9GErtX4A52OVn
         nIRGbryr1NNnk3eqUwFTZJPjM7gdBHWV5LDcGXD6zjPLoyfa8g+65tdM2jAUsPODvnQN
         lPVGc7NdagsrA+nE2oObv4lYxjixIEE5nLWX1SFCT/pkFsopcslZ3qzuTsCJMso4W8XS
         dbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jBo5gevQuYPZEnrkMT/5/1FaOq1EZDSxQftkELhCHpM=;
        b=4Jas7pCuWI4qjzWth3eFOnwpGJHkBIhlZHKW6v/5dnlGPIH4vU9Dikch3A/pY2/xAK
         rWKsevQHUG8s6OM9KmX6DppOu8wl8UjN2UIthhgH6CCxpoYEccTjrdY2P2NBDsJuOokH
         6nIfSp9rDqxXUrh6lML1cd6d3RiZgxz4d7p2U9I0n8ilDqbx+yT4aMfXHkXL8/SMfcUK
         wBWOd8YJPGKO3Eo8/Qv0QR3D5u11gWSmAxEGOgYhkR2aZFFsY1bJ5JWIgvabtVoHNfDi
         4+ND8fPRW35k8hiMSkKnaFu7clPZVxCcW8Wc/3gFhUuwVlRGlcbUMPyAIod86lSbWQhZ
         PvOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmsD41B6JPdmTvhW/7Piu74LV0txn+owiJKeqE7xbffnMmFa9bV
	3Qmf8Lt4qZ2NqNwDrZsSjiw=
X-Google-Smtp-Source: AA0mqf6t0faaiQTDCqtdDBRBnT/vj2zRgsHzvd/mqT1peop75xrPU8pBmWqPefSmR5YDY4tB7GqyPg==
X-Received: by 2002:a5d:5305:0:b0:242:25e:e731 with SMTP id e5-20020a5d5305000000b00242025ee731mr2367615wrv.48.1669360384238;
        Thu, 24 Nov 2022 23:13:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:236:b0:22c:d34e:768c with SMTP id
 l22-20020a056000023600b0022cd34e768cls6069188wrz.0.-pod-prod-gmail; Thu, 24
 Nov 2022 23:13:01 -0800 (PST)
X-Received: by 2002:a5d:4fc4:0:b0:241:e6e3:74ac with SMTP id h4-20020a5d4fc4000000b00241e6e374acmr9378811wrw.577.1669360381613;
        Thu, 24 Nov 2022 23:13:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669360381; cv=none;
        d=google.com; s=arc-20160816;
        b=VyB9HnEwyLKHJ91dxynunwXj4QuVZdO7TdyJAtg8IoPA0PZ94wiRfyzLGYT2WAzsjR
         7UtjWyqN+EUCjr8jGKX60P8i/Hzbnv9iW5zbKezudDD15V7Wtewmqk6VZzZa+LHSgwaw
         lm3fRAFau0GJYHrQ8Ww9r9ScEafBi+u1Xa77i6XOO/iZuTGPSD1J3HC6n67V3ZAEVxNC
         2Fp/KtP2N5iyVF3/hrK9M1MBffPNvfFsBnd0WQH6qx9ABqrLLqlnjhoTHh4yBSQ78Ybd
         Udd6iIDs33fBrRbzl3DwqF4vI9v4THYZxAaC9LJzWizFaeTiJHtmpOI6hkyKe1zjZ6wF
         XPjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=N5bXhO0DR8IXmJpnnUPjoD8z4KsOXFOQueNlKJbSNqI=;
        b=bwt0PZdMrI2j7Qh+NqNZ5YTHOkON5WB4RutlsRydly3xr+C0TzGER99AOFTOSMylDw
         BCytKJ33PGIGsgkfdcFTZju6LRiwNH8Lq+sXZMryNeIKYMNkAl90mgJ1ICUlhLO/09Ax
         SzSwYvYDVCVf50NAwkFvbgJSvm8dKhCtc2QIazQpvbHLPiLypy3MnAunUQKUJ56VJACG
         P3C5pBNUPwYmo0Xeoiwl211z4TlUsBcy+0YKxHKoUo4gBh1lnCjWF6uGcS0XB8QYk/U1
         /3YfYOGm5YD7LYPYD9AKhbuKdqP/9a2qHvci3F2fWsTXiKfuRnOdpi7wYpnooTEIEUUP
         Ds2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id h4-20020a05600016c400b002416691399csi143713wrf.4.2022.11.24.23.13.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Nov 2022 23:13:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 03A396000052
	for <open-iscsi@googlegroups.com>; Fri, 25 Nov 2022 08:13:01 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id D3FF66000050
	for <open-iscsi@googlegroups.com>; Fri, 25 Nov 2022 08:13:00 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 25 Nov 2022 08:13:01 +0100
Message-Id: <63806AFB020000A10004FFCA@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.1
Date: Fri, 25 Nov 2022 08:12:59 +0100
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
 <63806AA5020000A10004FFC6@gwsmtp.uni-regensburg.de>
In-Reply-To: <63806AA5020000A10004FFC6@gwsmtp.uni-regensburg.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Ulrich Windl schrieb am 25.11.2022 um 08:11 in Nachricht <63806AA5.95B : 161 :
60728>:
>>>> "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com> schrieb am
> 24.11.2022 um 16:30 in Nachricht
> <2d0439ba-7fb7-47ef-b52c-a866dc0c86e1n@googlegroups.com>:
> > On Thursday, November 24, 2022 at 6:06:09 PM UTC+8 Uli wrote:
> > 
> >> >>> "'Lee Duncan' via open-iscsi" <open-...@googlegroups.com> schrieb am 
> >> 23.11.2022 um 17:47 in Nachricht 
> >> <0f7258d5-ff8e-fa4e...@suse.com>: 
> >> > On 11/22/22 20:41, Wenchao Hao wrote: 
> >>
> >> ... 
> >> > Again, I don't believe that's correct. I will test it. 
> >> ... 
> >> Maybe a session capture (via serial line or so) to show real facts would 
> >> be helpful for the discussion.
> > 
> > 
> > Sorry, I can not understand this, could you describe more detail?
> 

Sorry, I swapped the roles of Wenchao Hao and Lee Duncan. Completely my fault...

> Wenchao Hao claimed something would not work correctly, and you doubted it.
> So it would have bean easiest to demonstrate the issue (by Wenchao Hao) by 
> some session capture starting from kernel boot.
> That's what I trued to say. Probably easier than believing or not.
> 
> Regards,
> Ulrich
> 
> >  
> > 
> >>
> >> Personally I think that information the kernel needs to continue working 
> >> (e.g. the mount table) should be in the kernel. 
> >> Maybe user-land tools can manage the info there (in the kernel, via API), 
> >> but the primary source should be the kernel. 
> >>
> >> Regards, 
> >> Ulrich 
> >>
> >>
> >>
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups 
> > "open-iscsi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an 
> > email to open-iscsi+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/open-iscsi/2d0439ba-7fb7-47ef-b52c-a866dc0 
> c 
> > 86e1n%40googlegroups.com.
> 
> 
> 
> 




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/63806AFB020000A10004FFCA%40gwsmtp.uni-regensburg.de.
