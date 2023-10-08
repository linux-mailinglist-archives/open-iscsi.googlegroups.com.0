Return-Path: <open-iscsi+bncBDGIZD433YCRBQPPRSUQMGQEIFRFXGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A14EA7BD119
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Oct 2023 01:14:12 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id e9e14a558f8ab-352642849b2sf28170465ab.3
        for <lists+open-iscsi@lfdr.de>; Sun, 08 Oct 2023 16:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696806851; cv=pass;
        d=google.com; s=arc-20160816;
        b=YubxUmvvd/UP4x+gqR6suSBj+EoDleFODiYzrvbFaJB1x9sLBRIvqf7iJKL0X2RoYi
         zha++Yfj1VPW1il3Ej1xkjJm95SjeFISIWs4jcmsYJhX3k739LWk/4uXQqpEKz8dq4iK
         iHrajjEc9Snk7Vo7LgGEFxFoEI2koBn+X10npJ+ntItY1wmSM1jepQEtwEdRoKbNUQWx
         eAk2JoiLDOPocoKSfDzZF9htD1x1Oo70nPGvx55YidSM0cZKlaOTx0C0tdm/HGieTXaX
         zycfjiyzl5gtT7PbX/41ICE5D4MMsY4lMOpgtvZQ7FAY24fOkbMmoRoNG9F2yekZ+W9L
         7RGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-language
         :references:cc:to:reply-to:subject:from:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=bRHfURCBMFLniGV3XDyadmEKElNtrIXK7515iC9h+r8=;
        fh=oQBFtupM2DJNP90cSEJuUHZ5nWSImwDzrtDtb03ybG4=;
        b=oThunQ+bF9If9iqJcF9IA4iAO7kwYs6+dY+rRO4K5ZF5NKirtEPaVqDbXbbUZk353I
         3mqsJKdpaJdQ2loO8/MlXMxCLzNtJM3WBPwyEmWuRod90ohrkMyn6jxDzGbokufUbkC0
         f1AKh7U4nO3tj0/blKXIc4LsA/LE5lZ6exsmYKC+yKIs0CQqmVgnxSoZ1b5phqSQjr9D
         juIY2PbjQkYvsi1HSXgX5uWXqstx70ky06z0/rqeqPFLeDtwLqw8psJosBRt/5ys8wOZ
         eE7xUQPiKwVSCpUmowT9xH1953BNQYFOZhyVzpJXaHkeqQetpv05YUL9ShcILEuw68dt
         5uQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696806851; x=1697411651; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-language:references:cc:to
         :reply-to:subject:from:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bRHfURCBMFLniGV3XDyadmEKElNtrIXK7515iC9h+r8=;
        b=Z1Y1zld0AzfNFeINHxopjgaBkxHihhg5y6pyz7SMYNLL7DxglgLKT/ec0ywml7c4Bs
         4KZgc+aUEU0tk586JwcpdOJBMPqzmMR9HDHi4dsmvjj48cDGIIvQ96Dz3sBFijkeKWVQ
         E46pQHNcZzcEyMXV+QjSkKu9cgzxRkI13TbcFrSl/OFu76dJIQ+hw/cZouJfvi4HsLe9
         FFEtS+XUIgQPb+2g6Br0nqbmoX8l3qtGVnBKopqZ47YWQCOyMPKk6hJemgsmfQ62CUGG
         4me59qQYxuXn214RdLj7gpc98t3zwqaGmtp3nil3jvdRxWUZkq6tgrHgCudAYb2Kuj2p
         /bZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696806851; x=1697411651;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bRHfURCBMFLniGV3XDyadmEKElNtrIXK7515iC9h+r8=;
        b=KAYJRjBS3t3LZRPLC0IEk9wk3Fx3/ZATefveXU5Er+AJiiTQHE+yAweX2nPmBd0YzZ
         hvdnNMWvYy0CzLRKbEecxNfII2PiqJJtgjZD3DcsGlF8ySgBiP4LBvS8/36EWGmZf/nv
         U+gttRajNHccNbVi3YZSWb+PB9I+MUGGwOzm3xKX4I9ZhqFOF04/t+0kmxih8WnTXgDL
         rqz/5dbXCL61YW1ELIF5TUljrR0tFjanCFQbDLcY8o1I7z/4+DPdHKiQTQZNWjF/pUqs
         yZuwBlxqXuDid9h9XnxcmxhtZKdrj2LT/6gZWRzKoCn5a2379uDMUlRSYBKl0GFWWrae
         iDUQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YzSZynxNX51GUv1msXv35K/KAAkVGlLMEgMEW47AgqtUY6jVIdC
	NM7/E+l+orO+B7CCsyEskM8=
X-Google-Smtp-Source: AGHT+IE5rVg2luc5Xcvzv5Rvq0fmkL3q1e5ZOnZQXy0U9u6au51c4YZh0Cxm3yPo2QZVcOAFBcUk4Q==
X-Received: by 2002:a05:6e02:20c8:b0:34f:c9b4:5f9e with SMTP id 8-20020a056e0220c800b0034fc9b45f9emr18446638ilq.19.1696806851071;
        Sun, 08 Oct 2023 16:14:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:3409:0:b0:352:91db:eb45 with SMTP id b9-20020a923409000000b0035291dbeb45ls1524534ila.0.-pod-prod-06-us;
 Sun, 08 Oct 2023 16:14:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:973:b0:352:a35c:f23a with SMTP id q19-20020a056e02097300b00352a35cf23amr13484288ilt.23.1696806848109;
        Sun, 08 Oct 2023 16:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696806848; cv=none;
        d=google.com; s=arc-20160816;
        b=rEq77sb0J0B2MwGh6ug7rflLHGFXFHHb2CZD3YuqN5Ml+2tPZPlz3D62FziIEYrOl/
         B/2zwDnMQ2NPa9jgGw0jJQR6ZihAm5FDKTb/ph1Uw7c75u9WOW2VjKCQferQUxOirX92
         EnNRbGU5Z4yqRKq1CvvZ0azR87R5K1esA9q6v4OTFU7U/n43PxvTj6ENwy1pfxVJqUoc
         tbb2J6WbRg0Bwa9UYNArXGawDSc95iA/nBk41WXATvnyHG0uiBXhj4yzgGiAv5GqE3AC
         ga3Mg/m8c3Oo12jPa0kf+/Oerg1wKxO0vqp9InlKZiiDeqRUPrcDcyAJM2CiljP6GNsy
         UWwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:reply-to:subject:from:user-agent:mime-version:date:message-id;
        bh=9FYYMTxUhm305lOdQ6+5pzw1R2HCwmolZy+4PsyF//A=;
        fh=oQBFtupM2DJNP90cSEJuUHZ5nWSImwDzrtDtb03ybG4=;
        b=jRyk6WxT7qfXXd/JRchfEkyAez/Of2aqNJ0eFQnc+YEWVubSOPjL7R06mae+thn3xx
         khvSi8yJLXFLdHiLaIdoocaIyinOK/4K/MYllLd5nugMjVubL1iv98B5YYwOtuUnKvvE
         aoVigw6D4VUM+nITvSSkLGL0Fk4XVtu+jqqvpWyWnwkxCyrBB4bUh+1gBiL528lcLBPC
         Sx+QTkFleFFCtr10kdS5jM7P1A4lM1cZBKkwwHICcduNLCNiEeFq7ndhWj+q67/S6d4S
         RSC2I+lniREjyhHimsfhfaR3/o5y1CNamgBRIn3nEvlIBGEZgy+Kk2GwtrKMvSQeSZ7T
         O2qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
Received: from mp-relay-02.fibernetics.ca (mp-relay-02.fibernetics.ca. [208.85.217.137])
        by gmr-mx.google.com with ESMTPS id o1-20020a634e41000000b00569ee9c848fsi569894pgl.0.2023.10.08.16.14.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 16:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) client-ip=208.85.217.137;
Received: from mailpool-fe-02.fibernetics.ca (mailpool-fe-02.fibernetics.ca [208.85.217.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mp-relay-02.fibernetics.ca (Postfix) with ESMTPS id 95C7A765D3;
	Sun,  8 Oct 2023 23:14:04 +0000 (UTC)
Received: from localhost (mailpool-mx-01.fibernetics.ca [208.85.217.140])
	by mailpool-fe-02.fibernetics.ca (Postfix) with ESMTP id 7F9296091F;
	Sun,  8 Oct 2023 23:14:04 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_50=0.8, URIBL_BLOCKED=0.001]
	autolearn=no autolearn_force=no
Received: from mailpool-fe-02.fibernetics.ca ([208.85.217.145])
	by localhost (mail-mx-01.fibernetics.ca [208.85.217.140]) (amavisd-new, port 10024)
	with ESMTP id vr5ko5C6duzg; Sun,  8 Oct 2023 23:14:03 +0000 (UTC)
Received: from [192.168.48.17] (host-104-157-209-188.dyn.295.ca [104.157.209.188])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dgilbert@interlog.com)
	by mail.ca.inter.net (Postfix) with ESMTPSA id 95C4B60455;
	Sun,  8 Oct 2023 23:14:02 +0000 (UTC)
Message-ID: <a517343d-cd37-4faa-8c26-c4e0c1217777@interlog.com>
Date: Sun, 8 Oct 2023 19:14:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Douglas Gilbert <dgilbert@interlog.com>
Subject: Re: [PATCH v5 09/10] scsi: scsi_debug: Add debugfs interface to fail
 target reset
Reply-To: open-iscsi@googlegroups.com
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com,
 kernel test robot <oliver.sang@intel.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-10-haowenchao2@huawei.com>
Content-Language: en-CA
In-Reply-To: <20230922092906.2645265-10-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as
 permitted sender) smtp.mailfrom=dgilbert@interlog.com
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

On 2023-09-22 05:29, Wenchao Hao wrote:
> The interface is found at
> /sys/kernel/debug/scsi_debug/target<h:c:t>/fail_reset where <h:c:t>
> identifies the target to inject errors on. It's a simple bool type
> interface which would make this target's reset fail if set to 'Y'.
> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> Reported-by: kernel test robot <oliver.sang@intel.com>

Tested by setting 'echo 1 > /sys/bus/pseudo/drivers/scsi_debug/opts'
and observing 'tail -f /var/log/syslog'. Looks good including that
fail_reset is readable so its current state can be checked.

Tested-by: Douglas Gilbert <dgilbert@interlog.com>

<snip>


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a517343d-cd37-4faa-8c26-c4e0c1217777%40interlog.com.
