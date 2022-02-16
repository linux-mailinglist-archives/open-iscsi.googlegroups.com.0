Return-Path: <open-iscsi+bncBC6MFJWO34DBBI44WOIAMGQE6QPWK7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B60AE4B8546
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 11:12:54 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id n9-20020a2e82c9000000b002435af2e8b9sf731523ljh.20
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 02:12:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645006374; cv=pass;
        d=google.com; s=arc-20160816;
        b=mpIWdEmkWrihQWQMFgvaYYks+hZ4gicHeyNDAHl64v0WbTE86tcDEpxBmgSI6IVUzL
         bhFaVhCplPuaEsjzlPzwEC+7Youas7ZDzmtmb2r3+ogpT3I75NCWsUaDgxqqCE7tAeMN
         vYvpb4jwP+3/UGIh7lUlnPVlkF96X9JQ651smpDqAm8PH0IqKUadWGgeYQ8lvWxUOJr2
         p9aXawaBbUn76BLMOdHZ2PBz3eOFrAOm6SyC4cJqrDfJyb8elolGVkLgwnM4goJflJS7
         DPQxW9nyH6J0AsXgXHMVHwNjBdpTbtYSKWjPPNOiV2YFfaLqDFRnoor7j0a8f2rQv35Z
         jk/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=1cWwwtsEyVPFCqR+C7gwN48eHglYcvnZNv1GYtf/wPw=;
        b=sNgWg07eLX+GecPFxuxS4Sa0nUdhzLX3Ujn52HCu5mWK1xRXEgO+8HsNz+iDkCC+Pm
         fPMmU9M8eZHzz03mEIa1wMq+fX/fI0u47x8foBG8V7eALpapaWSYOyrgnrHdm3Sednsk
         3+FJOdsG0QFXRGTUdgGX9cu+ZAigpI081oUmgCiHfySd8JgPWMM4/gLKQZvImrAsOvNn
         NRX2eXOZwGqydjT5T8F2He2k3g2rqdtoI38jjNGLtEIFjK640CAr/4g0gY7MgNZEFKtL
         X254hAJtlvinNCkqORuvv1NCv8GgsO1WgnrO+IKvhtAenQfxZljVAa3kMJHENgqsmsnO
         IV9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1cWwwtsEyVPFCqR+C7gwN48eHglYcvnZNv1GYtf/wPw=;
        b=BPZ19zzebWFYrZp8PZOL3Pzj5LMqPWtOEAuAMsamEdX3g36+NX4tre5T89BfKSIWhg
         H9dhNgK0RHSgQA7I2a0FezoClF98otn2OurMzlFH46dOMzcSRYE/74lzG0QDY7hd+4Jw
         b8C7qmc5H4VIhXfn4rAAhd0qUcCQV0h+sUyuySjE6spJxG0or+kmv9pQxORhE6SSg8oN
         Wejnl4Q+2hkv5kzINm6QvqxcUtr+zvKeXgQ4hXUHuAcT8MX3UXQyEIof1XdG5MFFYP0C
         lAoOMTSmONgHUky7NqVeZ9IuEHYV4L9/SRXIABzGjSE+G7nmQhSVI+1ruT5+7wiba7Ed
         o4iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cWwwtsEyVPFCqR+C7gwN48eHglYcvnZNv1GYtf/wPw=;
        b=2CIlImB4RCRYSNI/jG5Z7po7LsUbmNDLxV/lRZKh7CG7aA85lTJ9PxXWTuCiIPf2mk
         H7LmaWQnFG1SXZrg/B+UZWWPmEvHw3e4YLD6PBDNTnsSynCUHFHRC7fFdrEuN/rghICy
         ApQe9l89GC1J+SRbiXnQ+BBrG1FPw7bCj9Maehx3+UDv4XT6ESSj6jUFnqD2wFu69GRq
         2O9JpZIJPgP9qhx/WdJMwdPS127k5Au2jvmJKtu9B2xHGLkDQ2d2gKCuUIz6EhmN9f/Z
         LtIcP1UtwBV9xu/BRdbJ504X+alMRolTI09mYfAfpJqagtMNhnVb9NIz5su1dExV4HRB
         RSog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531KnK2NJYC/NdKZXDydN2VARvwx/q3DkBDhyqKsvwOUTcB2ehTz
	w1zg+iRdnMaAJy6W8Nk2O9U=
X-Google-Smtp-Source: ABdhPJz3WDvgfGPlugYCKJ9E8Wkn5tgK7vlbN4ggFfQD1dC8wUGpoHCyUKjdsShc84ajkSrMn73rjw==
X-Received: by 2002:a05:651c:2c2:b0:244:46c6:48c5 with SMTP id f2-20020a05651c02c200b0024446c648c5mr1571616ljo.64.1645006374144;
        Wed, 16 Feb 2022 02:12:54 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5931:: with SMTP id v17ls1271049lfi.0.gmail; Wed, 16 Feb
 2022 02:12:51 -0800 (PST)
X-Received: by 2002:a19:a404:0:b0:443:2ef6:1ae7 with SMTP id q4-20020a19a404000000b004432ef61ae7mr1585923lfc.554.1645006371165;
        Wed, 16 Feb 2022 02:12:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645006371; cv=none;
        d=google.com; s=arc-20160816;
        b=fx3tqPboZ0LKCGO8f9AsHHRbQvo8RaL227kGXhlPZn5CesAbqyDxdLqBWAT5kIJQbM
         h3+TEFDGtyekG7oPEdew381SBieFpNdkeDb/ynG0E35OHTCRgo4GnAGmcxjNg6Xg/crT
         3sXfAqtYDc8Br1sQ3c1+kbGjJAIj3VCcRTfCvesS1Qeivrw2LivnMDzL90i7Z383QMJv
         37yAAYaPsD+59y0PiiBiGQ8Eqc4RrHP3v/RynolIRnmFXKnd/lCTeH/NqJhU07ip35Ch
         nKgmy/yHfvXhl4c3uDEebzXaik05ew0cE33Enp6RsofDnGsLcDtqDH/l9z7AHryNwY+T
         SyjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=edOODYim6VriS2PR7xiRXPiiw8Mb09EIGtZmlnf1hUY=;
        b=qSLcdzV08BK7Vv92cTl5NjREjjnfFsPBQRZqEtYU/KzbTFEatpHlDHq5EagqBM+0kE
         7OWco/95q/EPO2X3nYar+p8XRb9HwiiGlDZJXxAI7dgznwNNPz/er6lAQdO59HpC6PCc
         PCfQmTkqs685b3x5TuTtPisV+gwkc3nTjmzwxyyviW9I6+URzyTeMELggYRvHwBmeZke
         O5XaEyWtvxAIp1mmFZp6n1/bO1Komiaaj0cv8hrGX2btqDR6wyGYa56kTX0kC2k681sx
         fcECFKxVJXR2hH51VQzNXriEoGHqd6LopX5Ua2GJ9CN5jhp2YaDRt7K10dxOejrIJ5TP
         ms7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e79])
        by gmr-mx.google.com with ESMTPS id c24si292844lfc.0.2022.02.16.02.12.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Feb 2022 02:12:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e79;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id A01DF6000050
	for <open-iscsi@googlegroups.com>; Wed, 16 Feb 2022 11:12:49 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id 6EDC3600004F
	for <open-iscsi@googlegroups.com>; Wed, 16 Feb 2022 11:12:49 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 16 Feb 2022 11:12:50 +0100
Message-Id: <620CCE20020000A100047D30@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Wed, 16 Feb 2022 11:12:48 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: Question about iscsi session block
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com>
In-Reply-To: <CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com>
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

>>> Donald Williams <don.e.williams@gmail.com> schrieb am 15.02.2022 um 17:25 in
Nachricht
<CAK3e-EZbJMDHkozGiz8LnMNAZ+SoCA+QeK0kpkqM4vQ4pz86SQ@mail.gmail.com>:
> Hello,
>    Something else to check is your MPIO configuration.  I have seen this
> same symptom when the linux MPIO feature "queue_if_no_path" was enabled
> 
>  From the /etc/multipath.conf file showing it enabled.
> 
>     failback                immediate
>     features                "1 queue_if_no_path"

Yes, the actual config is interesting. Especially when usind MD-RAID, you typically do not want "1 queue_if_no_path", but if the app can't handle I/O errors, one might want it.
For a FC SAN featuring ALUA we use:
...
        polling_interval 5
        max_polling_interval 20
        path_selector "service-time 0"
...
        path_checker "tur"
...
        fast_io_fail_tmo 5
        dev_loss_tmo 600

The logs are helpful, too. For example (there were some paths remaining all the time):
Cable was unplugged:
Feb 14 12:56:05 h16 kernel: qla2xxx [0000:41:00.0]-500b:3: LOOP DOWN detected (2 7 0 0).
Feb 14 12:56:10 h16 multipathd[5225]: sdbi: mark as failed
Feb 14 12:56:10 h16 multipathd[5225]: SAP_V11-PM: remaining active paths: 7
Feb 14 12:56:10 h16 kernel: sd 3:0:6:3: rejecting I/O to offline device
Feb 14 12:56:10 h16 kernel: sd 3:0:6:14: rejecting I/O to offline device
Feb 14 12:56:10 h16 kernel: sd 3:0:6:15: rejecting I/O to offline device

So 5 seconds later the paths are offlined.

Cable was re-plugged:
Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-500a:3: LOOP UP detected (8 Gbps).
Feb 14 12:56:22 h16 kernel: qla2xxx [0000:41:00.0]-11a2:3: FEC=enabled (data rate).
Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: sdbc - tur checker reports path is up
Feb 14 12:56:26 h16 multipathd[5225]: 67:96: reinstated
Feb 14 12:56:26 h16 multipathd[5225]: SAP_CJ1-PM: remaining active paths: 5
Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:4: Reinstating path 67:96.
Feb 14 12:56:26 h16 kernel: device-mapper: multipath: 254:6: Reinstating path 67:112.

So 4 seconds later new paths are discovered.


Regards,
Ulrich



> 
>  Also, in the past some versions of linux multipathd would wait for a
> very long time before moving all I/O to the remaining path.
> 
>  Regards,
> Don
> 
> 
> On Tue, Feb 15, 2022 at 10:49 AM Zhengyuan Liu <liuzhengyuang521@gmail.com>
> wrote:
> 
>> Hi, all
>>
>> We have an online server which uses multipath + iscsi to attach storage
>> from Storage Server. There are two NICs on the server and for each it
>> carries about 20 iscsi sessions and for each session it includes about 50
>>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block
>> devices
>>  on the server). The problem is: once a NIC gets faulted, it will take too
>> long
>> (nearly 80s) for multipath to switch to another good NIC link, because it
>> needs to block all iscsi devices over that faulted NIC firstly. The
>> callstack is
>>  shown below:
>>
>>     void iscsi_block_session(struct iscsi_cls_session *session)
>>     {
>>         queue_work(iscsi_eh_timer_workq, &session->block_work);
>>     }
>>
>>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
>>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
>>  blk_mq_quiesce_queue()>synchronize_rcu()
>>
>> For all sessions and all devices, it was processed sequentially, and we
>> have
>> traced that for each synchronize_rcu() call it takes about 80ms, so
>> the total cost
>> is about 80s (80ms * 20 * 50). It's so long that the application can't
>> tolerate and
>> may interrupt service.
>>
>> So my question is that can we optimize the procedure to reduce the time
>> cost on
>> blocking all iscsi devices?  I'm not sure if it is a good idea to increase
>> the
>> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
>>
>> Thanks in advance.
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to open-iscsi+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>> 
> https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4uNCicVmoHa2za0%3DO1_XiBd 
> tBvTuUzqBTeBc3FmDqEJw%40mail.gmail.com
>> .
>>
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZbJMDHkozGiz8LnMNAZ%2BSoC 
> A%2BQeK0kpkqM4vQ4pz86SQ%40mail.gmail.com.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/620CCE20020000A100047D30%40gwsmtp.uni-regensburg.de.
