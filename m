Return-Path: <open-iscsi+bncBCD6VAET5QHRB5WVZPXQKGQEX6Y45GQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FFD11DBBC
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 02:35:52 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id x9sf384679plv.2
        for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 17:35:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576200951; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZyL8OzagoXFm2lldhwaslqHh0kZXwuw17FzQ0u05WEN+23h4Oitu8BS/lNpwYcfkbh
         Y/+/cvEBjtoO3xb3EnN2SKohL12QcV7e6UJzm+RJlyAu0QFNQOyZAD0Q0obw9XcdGWvr
         DbSe5nspHOCvHbADg+bD2AyVHWSW1pVqwxs4jNz2o1Btfn0PExAC8vneCgm3KYhf7ihB
         kZQn0gDq80YGA+RTuccMKM/DJL53q3resdlQYp+tA+w6q97PK8uiOcqct1gAJLWFTmYK
         MKlr0o1g+JYyQQb6ZnmIz6VbDkphgNRsj6xSzlv7wiywUEP7c4yWHIsTejdlPVtMCxMy
         L2qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:sender:dkim-signature;
        bh=jFTs5kY53SZule32YoYTmtifXyfu/dX0F88QhegUlA4=;
        b=LPrblQerO3xZLQtdNPobe4jv1XJ6IB4sGBpTG1LECVawB1dz8UtSPG4y0L6sgQbxas
         IkdRZ3bmyGV5jFUhYP7XZdr+eiZIh32ZYHMp/gNPW2oBLmC6sRf2BL48LVdcx/vhArTH
         inUB/T1zK/A7wIrckuoUVXoAjtKdMp6dwatadofxrDdDXuNcDR02V05/iR1TMZJRzlMT
         S1zC+HzBUGrwvQEO9zDj/CpPD4P8G/TidYi+TLGGATgovLKHtGUD//1n4oyC0WTOgTOX
         /7q3K/MLYM27I957WgJiu3FvA8Hswf4g4GlhoVjZHblTQ2wKy9Z3PVHtcbcDEwd7iP99
         o2KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jFTs5kY53SZule32YoYTmtifXyfu/dX0F88QhegUlA4=;
        b=ma+1bXBRwfiz/ZgMQ1DHttzsneTaiRMfcRZT1i7+hfd2cTGdpRjk/RL1MjL6bQqZ+f
         t+vXoxjIcDlEinU12FIK/3FN4dCjmlGFTiIcMqsVNgRYl6IdWBxaRQh9w0QpC0G9WMyy
         d0gfPijznjKORbWgQyzqo3bwlE654zxKzjOGtB6UMJtzJncBwhGfh9aUR/I7+6OybAZS
         dxSgCyQAtf8AlZYJVFdp+12c99xXX5v5P73q92kSV5xuelQKbaqfIn12UTBv2XmbLiEE
         LlYnO2rmyskikGnydjwQy0kAe9np9Wa7kMRp2p6/bYGVsuiCQOKQAhfJgihsfzwn2gW+
         AvlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jFTs5kY53SZule32YoYTmtifXyfu/dX0F88QhegUlA4=;
        b=L5D2TITtmX6DC4pSgHFDvyeZAFO9p9Jk54FvKxnv9ojd9a+VjKxKYtugq+6lJERCFr
         NLNi6+4CumlxUMvbC3pcEpuHauolhSgM6f531trHrF/Yc9fydkNOqssId7haSm4a2IpX
         tba6sBF0bHD64H/u0iKTXuxaBUXaGXRtwbDjlR/Zfvjk79AS7eRKh6RTEecZY8mnzVUb
         qjG7T/ab2TEWYtwyZpFgEDPI7HJdV8ERuMQzCHPvymyywSdqIXfCEpLx9GT0D3DRPc80
         6Cb6D5Iv/fIRY4SRkLQZudaLTgZd098B5wDpAhw9wVJDZFbHxrxItYcABu6l/b9BISdp
         wnNw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWXhD2lQADLLD61veVhJwRVZboDPyBOF4yyR7j8k9FGyQV/czpV
	FChJzReaohEPnDS2hPcoKO4=
X-Google-Smtp-Source: APXvYqz14uxo+0l8m4SckTu48qI8Cy9zjqEfixzB6mTxF8k0ACOTNFu5/j1J/8wMBpY2c1CXhQhEyA==
X-Received: by 2002:a17:902:8688:: with SMTP id g8mr2629487plo.132.1576200951023;
        Thu, 12 Dec 2019 17:35:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:f8d:: with SMTP id 13ls1863411pjz.0.gmail; Thu, 12
 Dec 2019 17:35:50 -0800 (PST)
X-Received: by 2002:a17:90a:1f8e:: with SMTP id x14mr13872018pja.29.1576200950575;
        Thu, 12 Dec 2019 17:35:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576200950; cv=none;
        d=google.com; s=arc-20160816;
        b=WKUaJV4F8n7M+9d4FoT3f/TaQogPapFjgPp4uN7ZRPN/fAJ3dF21EhPUIyMRLrDYI3
         8xcmwui+IiouRp5M2vSZQjbDc6mTeUybBflYnCJsfckhL/fsk+nyGKWx80raRCLQxsDn
         e+pJuXkvpy+iP+pseFRNRrUQTxrTWeNVzax7AsLZy/29iTjOFaWeuDBsYCLzQFTA0UIe
         V++don2Z4abMcigbrVsUJvulcWwQJ2iQ2rzyLFXUrHmk4wZxUfosURZavA4q7HjksfAC
         wuU4/nVQ5DtFQYfHwh3qKYpsYd4c7BDllaqiLw9zIA4GV5M94IG1l1/NdBE8m5MowEhB
         IeIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=UEGw5W4LAZcikA8glRex1yBJBAoaOLBKaaWS/O76mag=;
        b=ciIrREJsz/OPVP2iPlJwzbk7c7s98LE19akxJjk7YZ8UclsGgY0kmGxVWnDbGwqKkb
         1l66x+w2N6iZLfy3VUPqf0aPgXVr3suhKVCOotRG0W+zisTfgsI4oWjUPWKXId1bDv1v
         VnaPefvWnNR0fyCi3yTG51YfCLABCfzaQMrA+C6Jr/SZK35DEZcpI1ofQjY/lUgkNi+b
         YbTtd+Fs0N28FebtUIAqo0aWC5F4gyNZ/q1/RVJlSS+f3TKBfdnV+GbXVO3w5YMdDxsA
         BsLa1l7iFe9R+KNGPR6TMzvjLegUCyNi/Md+L5AIpMnvZQNbQSJENuQOonAONxoCkjFT
         YfCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id h18si328065pju.1.2019.12.12.17.35.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Dec 2019 17:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id A8AF886FDA92AB88CC9D;
	Fri, 13 Dec 2019 09:35:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.183) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 13 Dec 2019
 09:35:39 +0800
Subject: Re: [PATCH] Check whether socket is opened successfully in
 find_vlan_dev func
From: Zhiqiang Liu <liuzhiqiang26@huawei.com>
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"cleech@redhat.com" <cleech@redhat.com>, <hare@suse.de>,
	<eddie.wai@broadcom.com>
CC: Mingfangsen <mingfangsen@huawei.com>, <guiyao@huawei.com>, "wubo (T)"
	<wubo40@huawei.com>
References: <7c543bff-009b-5a96-2e66-e75d5b3c7336@huawei.com>
Message-ID: <939f1d1b-024d-99e2-c0ec-c5deb3bc63b6@huawei.com>
Date: Fri, 13 Dec 2019 09:35:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <7c543bff-009b-5a96-2e66-e75d5b3c7336@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.173.220.183]
X-CFilter-Loop: Reflected
X-Original-Sender: liuzhiqiang26@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
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

Friendly ping...

On 2019/12/9 14:32, liuzhiqiang (I) wrote:
> In find_vlan_dev func, socket should be checked before used.
> 
> Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> ---
>  usr/iscsi_net_util.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/usr/iscsi_net_util.c b/usr/iscsi_net_util.c
> index b5a910f..c38456f 100644
> --- a/usr/iscsi_net_util.c
> +++ b/usr/iscsi_net_util.c
> @@ -192,6 +192,10 @@ static char *find_vlan_dev(char *netdev, int vlan_id) {
>  	int sockfd, i, rc;
> 
>  	sockfd = socket(AF_INET, SOCK_DGRAM, 0);
> +	if (sockfd < 0) {
> +		log_error("Could not open socket for ioctl.");
> +		return NULL;
> +	}
> 
>  	strlcpy(if_hwaddr.ifr_name, netdev, IFNAMSIZ);
>  	ioctl(sockfd, SIOCGIFHWADDR, &if_hwaddr);
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/939f1d1b-024d-99e2-c0ec-c5deb3bc63b6%40huawei.com.
