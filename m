Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBSFK6T4AKGQEKCP3FPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D15022DC33
	for <lists+open-iscsi@lfdr.de>; Sun, 26 Jul 2020 07:31:54 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id t3sf1887662pjo.2
        for <lists+open-iscsi@lfdr.de>; Sat, 25 Jul 2020 22:31:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595741512; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLmGsNsREz5q5Ase8cLN3f2hp0Ulx5oOIToHMGCEEd9M/ab0jsfdkBtfG6oiQdmeiV
         KqFvZuGErApWi1iC9ZLEXANzZaCK+UAq/MHhVXew2X7EPSsSntkgU6BmK+3T3mbSFPQG
         WPpx2+qDlEJ9fSwYFIgWNKQ8TYOXFuVqObf76xrrkqrjO4a4lnhytAUkFjYS7YHQGAjA
         o3yoolis4Tl1vn/gf4O8KoA9cMq7fLPY/tP0z8i3O4AztTvOPCR+Fq74jNgeMSeqlWkT
         hrGbH2J6+R5+fJ8JhP+WkSxiTXFcax+ys6G3gYjJse2AReZRgTA95F2yjdUDTMOdNxlt
         5lOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=7fX++51FZ3w6o3c3x7Eo7XQ5wALXYFY0aX+eJ4Rm0e4=;
        b=je5Ug9Gqm2CuTxv1imSdvfE+x3R2UB26QhACTkj+39/B2qanZBedMaJyy6DZ12r1e2
         iX86bHn7jOl56eMau86bl5cYFlminhUA9Y6sJYNd85gzXwMrGTFx7Bcj+nMAR5iZMZ8M
         QVT8ZbzgenlS8v5MoT+AeDZVQht6Vm43Smyr0GRaczSgEWYUbAlj/uggvXe/iEqoXSTk
         7eTBoUFYVCN0KW+KT8mfWFnGMTdZr9D8JXaJgBlUQjGvK9nlFP4zUf/h9ENY9hey3gBy
         xirWMEBS2epKNbH1Y5y4C0KWtsLexzCQoKIYn5BGOk+NFu7+NwdQsNDU6Q68N2dQE3He
         gB1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="f/GqM9Io";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7fX++51FZ3w6o3c3x7Eo7XQ5wALXYFY0aX+eJ4Rm0e4=;
        b=RpsH7R0coRs5IAVP+TnPwY2GSxQWL6tgueHQ/w9tx2mnUyfbRlfIf7/N54fxupZw9p
         Lk66Xgrkf29BY5yK7Z0MABRYICl8Q8VbYFReN0HxPQoVNUZ2CpLtT1+EScMH+BL6MnPo
         +xeFdog9Idxy4prmgwTfsLxvHVLYejl3QcUUifjU5I5KYfvLvvGDnUlAGRAzXWT7/Gzh
         sRIT6hmmxdsiqSBSvdACJsnBhdVod5hCAmPylnGFjyyz00oZWJJTvb7H8S2Od4NRcP3E
         hoNwUKk6eB6aXkrV3RF6DWGkKSGOaTppzvU4pqsJ8a2PEA/s6QJbPo9aFI45BLE1SFq2
         3qFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7fX++51FZ3w6o3c3x7Eo7XQ5wALXYFY0aX+eJ4Rm0e4=;
        b=e/Dy9hi+ASGntZp2L9e54WSfeogGwgmeXyY7pWFyBW+ylKLvs5J8qZbEXF8GY0KwMB
         PZP+cTSzDMh8mY34jGEyijZMOj18VaPp42hlGX/Uw/zvo1oe7NMznds4MQrek40Ovrvt
         Yhq2MAs8yIs3WxnArT7r1FLZCXPC3RTGGZL80YogdeNcAmOrFbpTaVOxkFotyOEdU+H9
         LXry7C1hThLT4yZPRI/jyyregMI4peikv0kzhF9FTXbLcqBbXBo68Ets96x47u4AgJ7a
         oBy/dE2T/08UIJWT40aE7XU+wZ4ioCE6yWvl/SA/EmuXFGO3Clp5t6c4SqwOeENjrPLv
         64XA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532t+1G7iywAZ2rApP3oCs82X2J+L5AP07FMOpINaXV6ae4UNfTs
	PoxSJAtTGyTc+fuTP6dv8JM=
X-Google-Smtp-Source: ABdhPJxoDO91HCWp06rF9dbhhDSiA0BhZbWG1gPCxyDtxWPiMqkXm05GnoZev7Y0VSfC9JvQRx5pjA==
X-Received: by 2002:a62:7bc9:: with SMTP id w192mr15528994pfc.255.1595741512289;
        Sat, 25 Jul 2020 22:31:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:6891:: with SMTP id e17ls3573438pgt.3.gmail; Sat, 25 Jul
 2020 22:31:52 -0700 (PDT)
X-Received: by 2002:a62:f202:: with SMTP id m2mr15878158pfh.157.1595741511872;
        Sat, 25 Jul 2020 22:31:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595741511; cv=none;
        d=google.com; s=arc-20160816;
        b=PyYo4gwW+vwnldo0FfN09RI9KelrMmSEgeqYkOzGBRt0gGs1Iw04bPsjeg28IIVryu
         iRQ5LkuXuW+tAxRfKxhmLB1S/+6qexibmSYp+BjAO95fYnJwnHG6KRFg8zs0W6MSgO2m
         Jnnm9dPrRHkHXUZgIFUO4AbOcGV77iaRSB7m5feEVAPua7YTzxo5dtrIPYsCUAwASxn9
         46mqBuI3dmqcUK4ZGCSEuEWy1UOXqcd+KkbrEnyrbUsNuGgyfYYJX/zimfS7rYNExxuu
         Vb9KWYLNpFTtl6eAG7FQyjJebMVIXi0PFtp0qA0PLA+bNqMHxcGEMMfrKyK7FCFqlE8N
         +w+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=J7pPDARrUog4278JGhIp+msnFU3gN7fV+/j9AiHsv/Y=;
        b=i3biWvR3wbyyhi/Jmh5p1X8+ht/MMtT/QUStikVd4VOBD7EZpuH6PQpakW1CfkoAi/
         EVDz4JcyBeWDS1eHzNh+1RbSkWCvXPgwEl2Au6CDfqlDhXg822J/sPedGLH0mlaOar82
         C75C3elfR2kDCsV5QrKcp0YHH9vFF+OEeruCdtfHZVMmb6267PPgDOB5Nqxml2cWMbYl
         ApG2FwnStXfgntWLLMob6vJ9aztTYnAs+Ln4T1E1sm2HTaMmSd7fqV4/bZ3PBj2kJt/H
         6nvwVAMYHvMC+g7qe9RdhI3gTSQT0CsPp9qXzSOyiPpgaOKjF5p33lte3kz5m56J3OUd
         u89A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="f/GqM9Io";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id c4si702599pjo.0.2020.07.25.22.31.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jul 2020 22:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06Q5Voua088225;
	Sun, 26 Jul 2020 05:31:50 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 32gx46gd15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 26 Jul 2020 05:31:50 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06Q5SZik062479;
	Sun, 26 Jul 2020 05:31:49 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 32gxajg22e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 26 Jul 2020 05:31:49 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06Q5VjL3029569;
	Sun, 26 Jul 2020 05:31:46 GMT
Received: from [20.15.0.8] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 25 Jul 2020 22:31:45 -0700
Subject: Re: [PATCH] scsi: iscsi: Do not put host in
 iscsi_set_flashnode_param()
To: Jing Xiangfeng <jingxiangfeng@huawei.com>, lduncan@suse.com,
        cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org
References: <20200615081226.183068-1-jingxiangfeng@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <30b2622a-a04b-6b17-c50a-e6920be359ae@oracle.com>
Date: Sun, 26 Jul 2020 00:31:44 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200615081226.183068-1-jingxiangfeng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9693 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007260042
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9693 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 clxscore=1011 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 mlxscore=0 suspectscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007260043
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="f/GqM9Io";
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 6/15/20 3:12 AM, Jing Xiangfeng wrote:
> If scsi_host_lookup() failes we will jump to put_host, which may
> cause panic. Jump to exit_set_fnode to fix it.
> 
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index f4cc08e..c5e99f9 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -3291,7 +3291,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
>  		pr_err("%s could not find host no %u\n",
>  		       __func__, ev->u.set_flashnode.host_no);
>  		err = -ENODEV;
> -		goto put_host;
> +		goto exit_set_fnode;
>  	}
>  
>  	idx = ev->u.set_flashnode.flashnode_idx;
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/30b2622a-a04b-6b17-c50a-e6920be359ae%40oracle.com.
