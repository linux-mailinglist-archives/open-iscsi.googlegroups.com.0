Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB6WYT77AKGQEHZFLEZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1154A2CC6C1
	for <lists+open-iscsi@lfdr.de>; Wed,  2 Dec 2020 20:35:24 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id j30sf1600760pgj.17
        for <lists+open-iscsi@lfdr.de>; Wed, 02 Dec 2020 11:35:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606937722; cv=pass;
        d=google.com; s=arc-20160816;
        b=InhKp2DG7e91ETukDSqs+4EgKEquzdUwPVxGlcLqxFsy4SViyUQxp+ZfMlaBE9Vp2T
         v7p2u1ytby7Rm4YEZ7hNW6DbcGwg7UPgeRQSCqwwC3GaSHDlpyAMI7BpSGE3c+f0bgSn
         3+o23h8Ah1K0/0F963AWJIQbId29gbgbjIZ0hTPiljtq4FX8+a/vxFPOvk611aETU0Jx
         0YVdN0cSmaRoY4ykURI9tSDMfvQg9tNsUZF3YxtdnT7Do6ea6Zs232RgTGZGAAxo7VAn
         6E2392BSKrdxOaxDNw5x2x0T5yGYef8UIhEgk1RoCV/rFkBdpZaKlj7xf5bBiAFRKUVr
         EGJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=YNzWkb6wnWhi5MbdMaQ+IoHXmYzSFVE89irIH/xGY74=;
        b=a5k+wQq6WfNQKEk9c/PAPlup7LDnu87UpztSNeVQm80COEtkPM79jdf79gJ8wVJTcK
         +QySVh7cO4BodtA3KNGNPUTuRZXVXmtaSyfH40qs6qXKrF4h8NS/4L5rHS5LigWaFalY
         Lx0qa6b4u4RZ/s8WRYGwQ6UWQlwNBdQVM/j2pOyUik8tyjZcgTydppAL8cjm2BcynczQ
         qkT7Iv+bqwz0jfzgW/qYfWN79fOUaU5Pnr+gqt3Ta2ILo5YJcFjeypWsLqdwZ54+bBWH
         4rwpX5qu6GqVyORbtQ6OBUq2fX3QS4w57YUntbqpbAonA+eJHMmfczWZ7hW4TSb4PhZz
         e7ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=mUvVUxfU;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YNzWkb6wnWhi5MbdMaQ+IoHXmYzSFVE89irIH/xGY74=;
        b=TJdkoFH7ROM4hHaeAoM2dwbOayss1nlQ6lA/Gf5PBuQ2upWfr107SbuvCmO2EcbcX/
         kojZur5UxNM7b0s0eTeU5K3bFvZYs1kmQvrMxxLkxfriDRVF7YODHKz5/mbN+V4f+VwH
         twf11KsOeBm4Axq9c7pBXY+W+gcPBycvzpRuyGZWdFZojrZBLHTj0kq0K7hajdrfBnLX
         fqqu3hOXplL8+Jwhg2mJyYhlp188xrspsayrxcatSlPbx6tmKH+Gtk5/aTzpVJ6fzY4C
         6uIEXq2rukj3rgSpgzESWEXlv2p42G4pPFDr1Ldd1eKWiIv1JyRoo/+Bv3GATDN9S2U2
         ad2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YNzWkb6wnWhi5MbdMaQ+IoHXmYzSFVE89irIH/xGY74=;
        b=HrRg0Pik89hJQub8IXNjvmIzKGJW2uJk/nY5oonHMYNQOa1ZS5E00Znzeeq10rxcO7
         MNT28gUjyn+7wf2kBDEl4vnZYst+EFf0oi4eNK/YunjueAzlYcAF6nl/IoNZMXoHOrw9
         ZEw124h6jeQWtlJgaJcLDsyW3CM4rP7+bN/bNcqvOjpU4xOES5VIyaHuFpUK7lpWGqRx
         aTpiZpCuBalRiXbKjqBBRpHI5OkdVjkczsalKWP/mGBc2MFjRz+xe+LmTidrENmxlntV
         7X8GHLEbWJO7GItTPHK5dlHqOnWqlHe0mqBdP+IhG+qfLd0JPcA8d/COXjIF2CIeQmNY
         sxvg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532o5Z/LFjvqf8IOKTeB0kwt70mL1ANyI8ek8h2HCpZD00R+wrMG
	s/C7uSnE9XvzkbMlQ8oB0Ts=
X-Google-Smtp-Source: ABdhPJy31rRH/p8r55fJh8OtCqiEv7Yn+cMWB039ivdHrd4IDqtHLFkareT6bCGUI7swIJtfzKMTlg==
X-Received: by 2002:a17:90a:1b44:: with SMTP id q62mr1314415pjq.59.1606937722785;
        Wed, 02 Dec 2020 11:35:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:230a:: with SMTP id j10ls1089912pgj.9.gmail; Wed, 02 Dec
 2020 11:35:22 -0800 (PST)
X-Received: by 2002:a65:67d0:: with SMTP id b16mr1250098pgs.397.1606937721896;
        Wed, 02 Dec 2020 11:35:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606937721; cv=none;
        d=google.com; s=arc-20160816;
        b=Gu4OZRnFW+kKsYV4+IKQjHW2V4SpCmp7knBKDI3WGzcY5kBwI88u6GSOGfw8JH8ruQ
         XqEGbXyjm//D5tANnSxY/yCaMX6LaEjmzwG1jWVPop/HlHMqbO6ZQcRbqlWuqlX3hyyg
         Ol7BeTFbsAJlJAUat2/6AMO61pl+EwEU8iZfhKefL8urA74JMBdQuUY3riTuwRhaob6U
         RSQn4OUeSZjsinEtDk73acDeajd0BYvJWRk9uKMyMO/4n3nZTSt9hZvB8Yc5T61EJN6z
         bPODGY55G7Tho7INHSEEx4bfs1j/3YtmbINjc3wg08HXR9bv4bZE0sJo/zguHi6CpnLX
         sHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Uw/G6EZJX4YmYr9zvI3PxyPsOjo4URTdPNU+xzFSpbI=;
        b=hy9yc70ESWgfsMHGS4CaVgT1vwN0uVEfPm/lLTY+LzKuGcVZkkL+VtgeygyVUOtYlb
         GxWH2SvvJoMmowiqE89QHaTd46yBfCx5+VPsNltbjJ18l+nRNiRsgQbSvtymzOhnH0+r
         TdJtGuABA0lmGncf4xpo0UzebPdlZYn5hDlA8Tn/C5HCN8EhM6XMjsgQYNimS4bcqEtR
         ebDRM2MnCnQoyPNwq3u5I4IjWfYCwGlXboptOrJ9tg8+WJFfilG4u6DdCjcz7T8ZEqBt
         BZcUDm52dMvZ1xLFsGArRBXuNqg7vBYkUmhGIaeCWiENudvLG5PuXhwdUK9F3xeTLh6Z
         MtnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=mUvVUxfU;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id mt17si201459pjb.0.2020.12.02.11.35.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 11:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B2JZJD5081809;
	Wed, 2 Dec 2020 19:35:19 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 353c2b2etx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 02 Dec 2020 19:35:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B2JUTr0151963;
	Wed, 2 Dec 2020 19:35:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 35404psauy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 02 Dec 2020 19:35:19 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B2JZIEV006449;
	Wed, 2 Dec 2020 19:35:18 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 02 Dec 2020 11:35:17 -0800
Subject: Re: [PATCH] scsi: iscsi: fix inappropriate use of put_device
To: Qinglang Miao <miaoqinglang@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201120074852.31658-1-miaoqinglang@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <331a17b8-3219-cb73-90c8-4b814202a78f@oracle.com>
Date: Wed, 2 Dec 2020 13:35:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201120074852.31658-1-miaoqinglang@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9823 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 phishscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9823 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 lowpriorityscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012020115
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=mUvVUxfU;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 11/20/20 1:48 AM, Qinglang Miao wrote:
> kfree(conn) is called inside put_device(&conn->dev) so that
> another one would cause use-after-free. Besides, device_unregister
> should be used here rather than put_device.
> 
> Fixes: f3c893e3dbb5 ("scsi: iscsi: Fail session and connection on transport registration failure")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 2eb3e4f93..2e68c0a87 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2313,7 +2313,9 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  	return conn;
>  
>  release_conn_ref:
> -	put_device(&conn->dev);
> +	device_unregister(&conn->dev);
> +	put_device(&session->dev);
> +	return NULL;
>  release_parent_ref:
>  	put_device(&session->dev);
>  free_conn:
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/331a17b8-3219-cb73-90c8-4b814202a78f%40oracle.com.
