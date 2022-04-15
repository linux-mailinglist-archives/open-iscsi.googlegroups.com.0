Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBCH34SJAMGQETK6U2FY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F7550277C
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 11:40:26 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id v11-20020a056102238b00b00322c1c428a6sf810937vsr.4
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 02:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650015625; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFPeX/CUAbmVPRrGkzW37OBumGfhYxyMhfT7JX/8KyQ54ap8GSRn5fcvFCLcByzOKv
         V34XOThpLaUVZCA1ds7ZaU3uu7Fv6nWJVxbi9sRjQDcUPhQfP4ygv31h9x7IpCwPMw1W
         BCSSW17oOoBqqrL1a41QoUc8FYMMqTDYEjrn/1sDmwqonfwd/9xVRoqi5lOtbHEd+Ghd
         nwpspNwkHxDJ68yb3zminGX0n9Giuyc3MWYrf5MB6K6u8r470PmhKHx96F17dzL/y7HE
         YI3Bm+apZo8JJ1zmyJ/0cvwHrMyBUN0B1THyMz9suYTmwK5Zfcplg1sP6ikoPKP1ecF/
         1paQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=IGuVpcVz7Yi5FVsYsEP7jHF3TXf9YAozuaPFzeSxhqw=;
        b=N99EyLxK937TnUAyUavQ5gKq1SMRPsd3Xgnwe48kzNFdty7i/Vt3tosgqd6CdiBfmj
         AtC+fvJVQC1g23mtDqDlQ1+oQltoSvf0eRhsasjI/BRYlDNrHRY+m+R3gmwamdXtOmrt
         zYcN/X2x91O6QU+9MU1ifh2VEXXghwsLL+/yMrndeqS8xr8Ud/U3oR4BjgHX7ZTMlskL
         OqFCA3Bewzhraa/8ZRjnBn26Buh1ZeZKix16UzrntdkR7jsYzpl4v0RXCCh6g/SBS042
         v//XiPlbeyNr/+Tio90OpQfEiD3oVKQ2ihmyipvJFFL0RyM4BPgo4B0L4aITwY73Y58E
         bm3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IGuVpcVz7Yi5FVsYsEP7jHF3TXf9YAozuaPFzeSxhqw=;
        b=rCTKnVP+b6WdyQsK2EOnRLJrsQT+fG1xnlViTPypMEgnj/jTQnrNXDKlkmMvzIRWUW
         3BjXSpofa8PytbHbu9iwsu9OzD+02CUibXi0iculdpXSBsW0oHQidYcMgXvr9EbASw5C
         Oy/pJFTFUzxsLsu+iVFOY3+644KlDTsMiCndD2iifqUOFIm+RZVOnLMX6lLZtD2xRbf9
         X46t/xr8ChtwVrvfVgX8B0ICp7N9ZehavWkEvylyyQF6ewGRQRCGBwSCRI/ksMC96sgk
         o2ssx/fX4ao1Xw8eyQgm3gWxmhtnTz0MNTonEYDHgG2dc8Avk1ba1oQaBwe4hAF4ujiP
         gXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IGuVpcVz7Yi5FVsYsEP7jHF3TXf9YAozuaPFzeSxhqw=;
        b=zB1v6vSVHuUOdVhFZsdFJr0B8kcuwx4pFJBwefp2YRd8H2PxVtd94AuIxDtFDUoWtk
         uW9XOrDZQ3XbeN3wxiKNMwidsNeZ7FEBomczes+mJQ1JB6BdqcYf2G/1QfInrCXaRV5i
         MV2M2xL3cazmB+oIiGWr5EXaC85s4/12LYUcYW93yFjgVijWDsULuF15qQElfhUPEbOm
         s8rqs4JbjyWDcm3TBBiHY6CgE/UBtuj3cdixlV8QWAhfCtVLJnk5jqWuxY/ij6+GJmAh
         RElK63OGvzssPpM2ZkrXp7MK3vakIGueZeFvjyASkt4HuZbRKDT+u4Faw1hCzIOo5P+C
         kUOg==
X-Gm-Message-State: AOAM531UqT4MVqaFrHdvMBSn5JSUu6oDhToRelhlQobQGRx8QQ4kuZBF
	sbz9uRlUxdqAcpP9zS7MfM8=
X-Google-Smtp-Source: ABdhPJwpzdRkjlRFdNqNMSxesnwGwkqNC+GBF84k/e2c0SueqsZWp1Dbyre2yrvMX1gQXPmGTkKFbQ==
X-Received: by 2002:ab0:1e05:0:b0:35f:ab7c:ae3e with SMTP id m5-20020ab01e05000000b0035fab7cae3emr2068029uak.48.1650015625568;
        Fri, 15 Apr 2022 02:40:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9f:3118:0:b0:35f:a819:9e1 with SMTP id m24-20020a9f3118000000b0035fa81909e1ls679377uab.2.gmail;
 Fri, 15 Apr 2022 02:40:24 -0700 (PDT)
X-Received: by 2002:ab0:15ae:0:b0:359:6107:43b8 with SMTP id i43-20020ab015ae000000b00359610743b8mr2012604uae.23.1650015623964;
        Fri, 15 Apr 2022 02:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650015623; cv=none;
        d=google.com; s=arc-20160816;
        b=FCuor7ZseuLv5D3tKISfzGFJ0xMOhVvzoHyMfxSjquZU+naQMv/VAxvjDQSiUBEPMI
         ZWM9G/dPtUYiP6PyfHRAErwReGRcZ0DZW4FjEM6PSSKVFhsT+WdcE5g6Tphnre7cgxIz
         XUw1+niY8RZ3QkEhe2H6KUF0YdsLpTFuzBJtjXXVRkIZYkGgRqWqc7B43XpFP3IfCXaT
         TpCvJKBVcmCedcwEfNJrZP4ebLhyeVNicPUwbBZIMnOHZadmY5zcXFmgQVeoVij6sGd5
         17J4njNEz8PUnzaxnuLzsgnOf6qtB+HM0jhnyVlShzET8AZmqDAyjId8VSZt8B9dV7DI
         Kw4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=7LxHvFFDzBVkgdBIbboLMw+KWVrbP4gHfKCWxADmAt4=;
        b=DpL3c6SwSzo8RNjg41mryLM+IiHus4+ePSaWXS1CtpraZqVbNRIrhAOoPuZbG60Ipp
         iEd16P1ZzH2/5AKsyrXXt8SSCWBTHD5q5g74mRf43hlMl2qqEso0jmWJQUeYCAIkymIe
         YM425dQTKEPLKztwY0FcRVF3fks32j5ZsJKjYk1gwP7gul77qW/0vmaYgNKO8KShArDI
         lRUGWJT23fmLPzsnIz4hSaKEb+p5ISC0hrB3ma0ncu+vS6u/xe2ATCujE5DdNhoQgbUd
         mUj6ZWVOxnuyH5ATSh7g8bQn5q1rdWjKW7J3fZUMHCNLS8JoxkJY/wNikxnD6NIsk/Wo
         E7lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id q18-20020ab06c52000000b0035fb1829e8csi329970uas.2.2022.04.15.02.40.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Apr 2022 02:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Kfrmd15sGzCr2p;
	Fri, 15 Apr 2022 17:36:01 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 15 Apr 2022 17:40:21 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 15 Apr 2022 17:40:20 +0800
Message-ID: <f587206a-4479-1748-9211-086d79249b95@huawei.com>
Date: Fri, 15 Apr 2022 17:40:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 2/2] iscsi: set session to FREE state after unbind session
 in remove session
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Wenchao Hao
	<haowenchao@huawei.com>
CC: <linfeilong@huawei.com>
References: <20220414014947.4168447-1-haowenchao@huawei.com>
 <20220414014947.4168447-3-haowenchao@huawei.com>
 <a8087705-2cea-f01c-ce67-639e97edc30a@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <a8087705-2cea-f01c-ce67-639e97edc30a@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

On 2022/4/14 23:30, Mike Christie wrote:
> On 4/13/22 8:49 PM, Wenchao Hao wrote:
>> __iscsi_unbind_session() set session state to ISCSI_SESSION_UNBOUND, which
>> would overwrite the ISCSI_SESSION_FREE state.
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 26 ++++++++++++++++----------
>>  1 file changed, 16 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 97a9fee02efa..d8dd9279cea8 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -2173,6 +2173,22 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>>  	if (!cancel_work_sync(&session->block_work))
>>  		cancel_delayed_work_sync(&session->recovery_work);
>>  	cancel_work_sync(&session->unblock_work);
>> +
>> +	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
>> +	/*
>> +	 * qla4xxx can perform it's own scans when it runs in kernel only
>> +	 * mode. Make sure to flush those scans.
>> +	 */
>> +	flush_work(&session->scan_work);
>> +
>> +	/*
>> +	 * flush running unbind operations
>> +	 * if unbind work did not queued, call __iscsi_unbind_session
>> +	 * directly to perform target remove
> 
> We probably don't need the flush_work test because we are going to
> normally call __iscsi_unbind_session.
> 

I think we still need calling flush_work here. The introduce of flush_work
is to make sure sysfs objects are removed in an correct order. There is a
very low probability that __iscsi_unbind_session() triggered by queue_work()
has not been finished, and iscsi_remove_session() is called. So we need
flush_work() to make sure __iscsi_unbind_session() has done if it has been
activated by queue_work().

> If the unbind work had already run, which is the normal case, then
> flush_work returns false and we end up calling __iscsi_unbind_session
> like before. That function then checks if the target is really unbound.
> So the extra check doesn't normally buy us anything with your patches
> because in patch 1 you fixed it so __iscsi_unbind_session doesn't send
> the extra event.
> 
> 
>> +	 */
>> +	if (!flush_work(&session->unbind_work))
>> +		__iscsi_unbind_session(&session->unbind_work);
>> +
>>  	/*
>>  	 * If we are blocked let commands flow again. The lld or iscsi
>>  	 * layer should set up the queuecommand to fail commands.
>> @@ -2183,16 +2199,6 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>>  	session->state = ISCSI_SESSION_FREE;
>>  	spin_unlock_irqrestore(&session->lock, flags);
>>  
>> -	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
>> -	/*
>> -	 * qla4xxx can perform it's own scans when it runs in kernel only
>> -	 * mode. Make sure to flush those scans.
>> -	 */
>> -	flush_work(&session->scan_work);
>> -	/* flush running unbind operations */
>> -	flush_work(&session->unbind_work);
>> -	__iscsi_unbind_session(&session->unbind_work);
>> -
>>  	/* hw iscsi may not have removed all connections from session */
>>  	err = device_for_each_child(&session->dev, NULL,
>>  				    iscsi_iter_destroy_conn_fn);
> 
> .

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f587206a-4479-1748-9211-086d79249b95%40huawei.com.
