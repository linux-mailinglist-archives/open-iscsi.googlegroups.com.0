Return-Path: <open-iscsi+bncBCYMVIPVXQMBBCNQ3CQQMGQEC7APLBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D336DE96C
	for <lists+open-iscsi@lfdr.de>; Wed, 12 Apr 2023 04:31:39 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id k4-20020a05600c1c8400b003f08ed470c2sf1882386wms.1
        for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 19:31:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681266699; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9uxcG1/1SIZetAWrbRrv/7LOjCey5s7g8nKrC4QfYzR1/FGuOz8QohdTBMvezXcuR
         s6yR54TPyyHJShebGfSmlxsCw9WcjfE7AvoCe6rb8r8Odokw0PLri3cFNhwi+fOQwitO
         3wANtRK0PdIAh7IqxZ3tDFmnj06Tq5fEETBK9/efOFzTxlvB6gYbglsq3Dt0ZHrJxH88
         e+5vB++98DyZyB2EWiBt62x+cuXKN2ZsXZpRpheRqTLOeuMC1jf85GeqlbTGXqmJnyvf
         RKQFvx+kefbuiCjBcmKg2uU0qOw3McrlClttw90WxNU/FezF0ns2xbCloGNXDIu8qANI
         ejeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LjYjPUeQofVBJUV/0PBTnt2n/Z8IloZgHfiRMbRoC4g=;
        b=KVQj9hTM/iQ+xUevsaPeY0R58zDEI8PD15WpRerou9WkteHD7pRXryhqnCxERVmL9t
         u97G1RQEjKOAXHFXiOhR46JM44CS3o7EoYlnFdH8ESxfjdUSFo4+GWbRSB7HVZxxhcQj
         EZW8a4FzodlQf/Po/tu3/cP7IZp3AJ8bCzKy/ajAmOIt+XWvLcruJm3SKH9m0Jxyog73
         hmRsmcPECrW+yfGnfq6kM/p4iqEwzNTWh6v/M77dLDq2KIos3vwYGVTxsFfB6JIkFg06
         R2Yu/0wsV9Xf9X2zc49maIZbi+ZF6qB0mL0nDSrB09g7sILPgUtNSnJB+dOrIslOTR2u
         Tqbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PoGj8UGr;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681266699;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LjYjPUeQofVBJUV/0PBTnt2n/Z8IloZgHfiRMbRoC4g=;
        b=QqkwJUVmurf89rPFCNwdJM6Mvfbz6+k7fGjz8MHqC7QoLI0TvplNNEyDddnNr8Ofvh
         CM5Zj5NYvJd4v1r44BRvceLjZ7NbqP0rwcLsIv/R2+DZ1/VD5Q2Xd7nekLfc5sAv/y8D
         tq6pQxKcZ5GfZSvTvGk4DHVnrEX9b4Q2+JGRx12zlqn+zhLN4by/OxgXPWewG0I/6AUO
         1zpNd6YRILOx8Uus9n8neC+S2B2rkinnCoa1keI9+s1TB/kQwcyR85jZMfaxwaUc1Tfu
         2XLfadwpWgk1JD9cCa9sJ3QRnUbA0BAmRisQpJsXry1F/ygrIu8E7h+ewvqL4JMe7SSi
         qfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681266699;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LjYjPUeQofVBJUV/0PBTnt2n/Z8IloZgHfiRMbRoC4g=;
        b=vdqNY049wM9OWTDgS1j2ouNm9NT5tWTtvKKM01rm3vuJxUBtqPDUxViD2t48SqbY5E
         FDxq2+OetUJCymfvWkpfrDbwNGtVA7OuqT0w8xw9iJD4KDuiXGHwU2bbWn2HAglymRvN
         i/zZxAjS+enPqaW/wncZ0FqsTFOqFmHCjtIwECbpZzYL5GzLK35YYhHQScW8WfjCfwWN
         pFMAN6Iq7BLT2smFipmcJnwHXAC3cEKLSSAvKw6VFhRdZkQkXu6KXZhHrw4KybKzdQ6e
         dPKukFCQpNjOeDK2p9ZPyHu1K+bsi7EghOM4yKEDGmIvA1oWOy+BbXwPFjG/zKiixiGz
         ug5A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9chP7bTh6AaMgAiKWyJh6SYy7QWcMBkgkH1QFkwhG1FQSbrPaqS
	axk01HXFENy+ZaQ1bFbOYMQ=
X-Google-Smtp-Source: AKy350Zd3adlp3YSo+B5J6dKEZq/HjR/P6tvQfKmT71EVgg1KMy66OYNn8kRy+Zs4Z8/tWTBU+H0QA==
X-Received: by 2002:a7b:c4da:0:b0:3ed:241a:bd2d with SMTP id g26-20020a7bc4da000000b003ed241abd2dmr3433249wmk.6.1681266698754;
        Tue, 11 Apr 2023 19:31:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:1f11:b0:2c5:5262:2e24 with SMTP id
 bv17-20020a0560001f1100b002c552622e24ls5082942wrb.2.-pod-prod-gmail; Tue, 11
 Apr 2023 19:31:35 -0700 (PDT)
X-Received: by 2002:adf:e386:0:b0:2d1:6104:76ab with SMTP id e6-20020adfe386000000b002d1610476abmr3106420wrm.2.1681266695781;
        Tue, 11 Apr 2023 19:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681266695; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/OBMWcRp4WsZP6OuyxewhqUNFYbEeqhI1EDQrfnPEhOVQgr4XFavy0cBdYwBZ9iB/
         4E0jObLuoDyaOYBuDkFwqncGu8WrQzZFDfvaQoM8lmDinoYnmngDiwvC4aq1q746cfmz
         P7WL5hIEzZYYEeEUZmBJS6hs9+kbGnZEZLM64ogdkf6aR3PZ0uZ4wD+g5oQ5jIZNDtjP
         MLmv9wG1cuQTVaPVxNMDXQThC/3SjiCwfE6lcPCiM5riSkgpm2IZ6bM0wopZYbhw7qFN
         y2iMQKIiEABA3DbtJf34SuR9AxwmFh4ccqLXsDDrHg2naNCt3SpyYNCCi1VmSSFL5fTG
         O+wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jAS+m9m5VyUpKBchdiVlMAfxL5Qd4dYwrUH64TL4UNI=;
        b=wqCI6KIcyoibjQLE0Jk+0EDvZcFs51HHyC2dS8/mestjPlqiniwxPgLGY563EB0oaU
         yWo2zsr5mQ5WR9/Q/t8iXbJZvrYqzTeYEeJCih/OOFIEk3gx2WAa4Jt227I/3qfOpzA7
         8Pcqh6J0gyD/1RmXCmRvC0+ire2fS+Z8Dxxgw1n3T4SDb/UaVTwcIaDc5BdTID4ptQB9
         0b/pR2/drNDMpfxa0FRTgNwHbf8c8gSBqbVsMJGaeZH19Qhuy0uxIkrc1Eawx7aWr37x
         uejrsJDK8VjOdHplYV3n1eC165O9l7BPjvstIphlPJXLR6hd6zkjfkpa74I8sokvlS78
         axSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PoGj8UGr;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bd14-20020a05600c1f0e00b003ee501fc79csi32682wmb.1.2023.04.11.19.31.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 19:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-qBO12-npNsy5sbt7pmMEiA-1; Tue, 11 Apr 2023 22:31:28 -0400
X-MC-Unique: qBO12-npNsy5sbt7pmMEiA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72C5438041C2;
	Wed, 12 Apr 2023 02:31:28 +0000 (UTC)
Received: from localhost (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAE1F492B00;
	Wed, 12 Apr 2023 02:31:27 +0000 (UTC)
Date: Tue, 11 Apr 2023 19:31:25 -0700
From: Chris Leech <cleech@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Cc: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
Subject: Re: [RFC PATCH 2/9] iscsi: associate endpoints with a host
Message-ID: <20230412023125.GA1777710@localhost>
Mail-Followup-To: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
 <a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4@suse.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PoGj8UGr;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Mar 14, 2023 at 05:23:26PM +0100, Hannes Reinecke wrote:
> On 2/8/23 18:40, Lee Duncan wrote:
> > From: Lee Duncan <lduncan@suse.com>
> > @@ -230,6 +230,7 @@ iscsi_create_endpoint(int dd_size)
> >   	ep->id = id;
> >   	ep->dev.class = &iscsi_endpoint_class;
> > +	ep->dev.parent = &shost->shost_gendev;
> >   	dev_set_name(&ep->dev, "ep-%d", id);
> >   	err = device_register(&ep->dev);
> >           if (err)
> 
> Umm... doesn't this change the sysfs layout?
> IE won't the endpoint node be moved under the Scsi_Host directory?
> 
> But even if it does: do we care?

It does, but it shouldn't matter. The Open-iSCSI tools look under the
subsystem, not the device path. Being a child of the host makes more
sense then being a floating virtual device.

I just re-tested with bnx2i to make sure moving an endpoint devpath in
sysfs didn't break anything.

- Chris

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230412023125.GA1777710%40localhost.
