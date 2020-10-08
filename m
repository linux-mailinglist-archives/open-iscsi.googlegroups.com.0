Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBEHZ7X5QKGQECPY4XKI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E01B287D85
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Oct 2020 22:54:42 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id m1sf5163550iln.19
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Oct 2020 13:54:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602190481; cv=pass;
        d=google.com; s=arc-20160816;
        b=cD0DJdeDPD8omvUrkxZB6olM2Eywg11GrYkroFaMA+ZH3SIlRhlBD/GX1nu/EAamOY
         b8QDLICW43SnkwKGHepR7tqNAo81KgilUNGhGDvzDQRASpARoDgq5ut7ICzH4ixrQBZX
         rYlPbDE+w1Z0yxJEr1F8jCtnlYdD7nSansjDnRQke18uS2PvF0o8h7UJmvxUvRXfxRdz
         MN3qAdGS5j0SWN8pA1ifwabLaHfdO/heqRQhkIrG7PrtAd3gcPv15kNxEggsXeeFmTmh
         E4p6Bg49xc7526B30N7Y4g6mlgceHNmf78fWhvfplVEIJjZUYTQsTLGnRoL31Nv+ODbu
         QIXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=sANOuLR2quCpHpO2KSRT2630say+QrSwoLnXXey18QM=;
        b=PG8mFF8A81lHsUaYnmjBKJEHEz8287Up9/oun/jFSaxlk+6GUxqoevm7iSkP9iYo5d
         KS8eFIrYw53Uca0SCyNR0I+8B8c2C+SklYHbRCMe7itcfxHiapNPfvMXSs4KfZbANU3s
         NRdKWZ6BB3ZztUwGB8CaBNsxmcD84GyB6i1ZhvCoPEnEwNhLu0U3/p7MKkr9jxC7PwwC
         Lu+wth3nQhRtJiiV+KsML1yoLRqVnPeR3oI1NZcsIFjG/S2vIRejpVMfAriPA1FH9FNA
         NRJAs5J91Lcp7bs0XCHZ5ycd/qMkB1qB7PtBbiYghM4JO3ZmWJhejp7W7BmXr8c0FzRE
         EoUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Rx0mdCEy;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sANOuLR2quCpHpO2KSRT2630say+QrSwoLnXXey18QM=;
        b=SjGEM/WajjEqVFtRnYyC+JCRkt989Xh6toSil0/FQfCG2NA2hDS/xzQOZIHismI0wY
         Sjo3wDBLMVNlsw9nXYlMqQHEEAvAm/LXEjv36pgbHeuZGc8XHoqdtgIONIOx7ZHXZzRK
         gTwRA7MtQD63u8k8SKPoQbK33vtd43Xov5HHAS3KSF5cZdzDCaqVuC0xTWiwnG0sEE0T
         nOglmXKeXvjG4SrdhBB/J3EW5+rqugVopl079w1GxDtNHv5MwuIN7oDOhy65WWXq527Q
         ybtOuv+Xf/W3xCOaUfaqE1h/0Lhs8xBmovkiL2H6S1oO8fvlmrxJue5KDfRSe2FvNRol
         Aruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sANOuLR2quCpHpO2KSRT2630say+QrSwoLnXXey18QM=;
        b=KapPcvpFejCdhuUxk/Br7v7kg6MWvTwMRjttJooPO8v1Y2k4szavQvoKclQTZOT7RV
         fbsaU3qQyapeQXT517Iv8RO88VwfSplyQYhmdqaEeFbmZ9tiM4gg6vEWmSyGfAKZh7im
         Mj8k465x1xQ+0fQJA2zuMaxDhqVpgNhX6JaUj78Y6l6Gm4/rdpkIl21kJiUuoBn5K8bD
         Nmi9ZdhqZs2oPzaWu3wfDDMtRaKWtGgjyU5fZWMEvE4LKPxNGS6/880kffUxoGiG/sjO
         ViSBCj2GpuKeQPhTPYDISOprMQdkLfFt0fNICdN9+S4HHjQn5AM+CzzemrSI9UskfST0
         4k5g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533OGWTH2RbyrQQtlPAz9FbsAjwXi1mBml0yC8Lpf5H6VAE8O9EW
	lSilxyU034vWP0f3JbSjneY=
X-Google-Smtp-Source: ABdhPJzCXpvUe+j+6hnqbBoZzaibH9NqDd0ZCOxtGRAUfylbf0Nkos+RByAFptLE9KfcSK9vba2MAg==
X-Received: by 2002:a92:4805:: with SMTP id v5mr8456346ila.78.1602190480783;
        Thu, 08 Oct 2020 13:54:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls1649204ilb.5.gmail; Thu, 08 Oct
 2020 13:54:40 -0700 (PDT)
X-Received: by 2002:a92:c5af:: with SMTP id r15mr8320403ilt.88.1602190480412;
        Thu, 08 Oct 2020 13:54:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602190480; cv=none;
        d=google.com; s=arc-20160816;
        b=CY4jJFV3MIGT6om+hZ95eDP/aX79L4aEhuyHW866iIugo3/flif1FOFxyXmDVICsm2
         2iXE0d+D0n4k18Qp2Nt1OpXdq0RR/hxQedTAhTclJkzS9+9+GzyM6/RCc8/NsegxZyN0
         ud13rWiKo39gXQCDi/y41nPJtgANgkZ0zh0IGzkDGUytkJ8CSd+iPnPZrm3W1s+g0xtv
         hNdCa7MICb73NBbj/xYGxPoiYQEpmzVDyRtZT9PyYb90inmapYSxTfghfUwMANqNDJhd
         eAoHdtTB2Wz67R0TFl5lI/vSUHHHXYSRkXVSdmOOQDyatbb3TRsEEZHzSUfKKDiURQ0T
         WN3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=0UrPukTFX1Z7kaEleosD+wgwp8yeWbRUVs/KYLs/Wx4=;
        b=wvLuOY2gd0SU4Yfi57h7al9bdnBNavnkSV78+pxfl+oJamDikPUqDeGsKMXS6R2WDh
         14pHKKSL4qJqavV4V1DrV1iJdHgPGWlicRpCX2pekh/8AKMFZYY9sJBNLfxYRzdp0VJ6
         aSrAvSiWw0t09jCLIOQncgfwHA4ITFzwBcZEBK/L1w1PqGHcEPoymntpWBuxf1L7Rod5
         /AFeym7c+V6hAjCMg/dlRfEc2cQfO4SihJPM2/v3gIwNW0l86I/YCXFoDqQiAs56tDDA
         jAjwV/aigbm3Hpgcapw7SwJNlMgWwWF2LT9bnMpKYLDNUzR7B4OPu8fHqVPX6RrLUjYj
         4Aug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Rx0mdCEy;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id e19si166131ill.2.2020.10.08.13.54.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 13:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098Ko1ik177988;
	Thu, 8 Oct 2020 20:54:39 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 3429jur7jq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 08 Oct 2020 20:54:39 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098KkE6X048228;
	Thu, 8 Oct 2020 20:54:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 3429k0989b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Oct 2020 20:54:38 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 098KsbAe016639;
	Thu, 8 Oct 2020 20:54:38 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 08 Oct 2020 13:54:37 -0700
Subject: Re: [PATCH v2 1/1] scsi: libiscsi: fix NOP race condition
From: Mike Christie <michael.christie@oracle.com>
To: lduncan@suse.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com,
        martin.petersen@oracle.com, mchristi@redhat.com, hare@suse.com
References: <cover.1601058301.git.lduncan@suse.com>
 <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
 <5e1fb4eb-dd10-dbad-3da9-e8affc4f5cf0@oracle.com>
Message-ID: <47eca384-b54e-63cc-0f84-7ed6501f427e@oracle.com>
Date: Thu, 8 Oct 2020 15:54:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5e1fb4eb-dd10-dbad-3da9-e8affc4f5cf0@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9768 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 suspectscore=2 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010080147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9768 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999 mlxscore=0
 phishscore=0 bulkscore=0 suspectscore=2 lowpriorityscore=0 spamscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010080147
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Rx0mdCEy;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 10/8/20 12:11 PM, Mike Christie wrote:
> On 9/25/20 1:41 PM, lduncan@suse.com wrote:
>> From: Lee Duncan <lduncan@suse.com>
>>
>> iSCSI NOPs are sometimes "lost", mistakenly sent to the
>> user-land iscsid daemon instead of handled in the kernel,
>> as they should be, resulting in a message from the daemon like:
>>
>>> iscsid: Got nop in, but kernel supports nop handling.
>>
>> This can occur because of the forward- and back-locks
>> in the kernel iSCSI code, and the fact that an iSCSI NOP
>> response can be processed before processing of the NOP send
>> is complete. This can result in "conn->ping_task" being NULL
>> in iscsi_nop_out_rsp(), when the pointer is actually in
>> the process of being set.
>>
>> To work around this, we add a new state to the "ping_task"
>> pointer. In addition to NULL (not assigned) and a pointer
>> (assigned), we add the state "being set", which is signaled
>> with an INVALID pointer (using "-1").
>>
>> Signed-off-by: Lee Duncan <lduncan@suse.com>
>> ---
>>  drivers/scsi/libiscsi.c | 13 ++++++++++---
>>  include/scsi/libiscsi.h |  3 +++
>>  2 files changed, 13 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index 1e9c3171fa9f..cade108c33b6 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
>>  						   task->conn->session->age);
>>  	}
>>  
>> +	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
>> +		WRITE_ONCE(conn->ping_task, task);
>> +
>>  	if (!ihost->workq) {
>>  		if (iscsi_prep_mgmt_task(conn, task))
>>  			goto free_task;
> 
> I think the API gets a little weird now where in some cases
> __iscsi_conn_send_pdu checks the opcode to see what type of request
> it is but above we the caller sets the ping_task.
> 
> For login, tmfs and passthrough, we assume the __iscsi_conn_send_pdu
> has sent or cleaned up everything. I think it might be nicer to just
> have __iscsi_conn_send_pdu set the ping_task field before doing the
> xmit/queue call. It would then work similar to the conn->login_task
> case where that function knows about that special task too.
> 
> So in __iscsi_conn_send_pdu add a "if (opcode == ISCSI_OP_NOOP_OUT)",
> and check if it's a nop we need to track. If so set conn->ping_task.
> 
Ignore this. It won't work nicely either. To figure out if the nop is
our internal transport test ping vs a userspace ping that also needs
a reply, we would need to do something like you did above so there is
no point.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/47eca384-b54e-63cc-0f84-7ed6501f427e%40oracle.com.
