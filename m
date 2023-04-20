Return-Path: <open-iscsi+bncBCYMVIPVXQMBBAGXQWRAMGQEKU2N45Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 325106E99C5
	for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 18:42:42 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id 6a1803df08f44-5ef626ad00fsf12588856d6.3
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 09:42:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682008961; cv=pass;
        d=google.com; s=arc-20160816;
        b=EF5BAxQMe8vUaN9PYbrwrGcWoIxjcwnZV6GvG8ZJpP5dr/H8aq8R4+cQejgpxh2JgU
         sijseS85NIJYBX52KYgsLyhSzaOWlXrtycKRLv9SdMZNOm+9D6m4U4fS5Yn/LchCiCCG
         cvf6J8aqTAS3AwnnHfBywkzkdSDt7cC/NflthRfoN7vy8uMqbHRYJWwg0sQGmgmXShIB
         qYqU2gK8aBHUTgMyW87BpGHIO5GCZbTnNd/2v2CCIVYn7DWsWXkC5dsjDc6Tvc6hcKTK
         EetPt7iwI4wK8N+XM02eEBqiImjGucxtFf+Jhcg4RNeWtoxJAX6Jfor/cVFnZwQooA/P
         jBWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tc2FEfhpHVyAUvvliyz1TnMHOvTWftM3dS05XyCKeV0=;
        b=GetFtQKZa929ImexBELsTCITP2hlvIcqXdbNgIV/il4oQ0lYc6jfM3oLOp7H7SyqM0
         we4QSAXwN3GFTYUDxUnuGj5Cf8ruZW5bGKznLnD5w96bZSS8G6nsSLMbGs7w+dKocMHm
         ev2E8c3RcS32S9mXhEM5QpXedubDNrLsRqB7jIE2eaF7A1gNDOXc8aeyN6ecyNHVx0iR
         bpXhPylzO0629ydDl7+3Lk3ityw196DVXhniLvTidu6u8Bt+DTk+TG79fF1XMWvU4QKh
         p5o/CJ6hVvrOq41VhYd6Xu64dSO77jay//D/Y3bgCW1+dDPPzYqrRH3h7Bb8Dl96Fx1f
         7YbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EBFaksbz;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682008961; x=1684600961;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tc2FEfhpHVyAUvvliyz1TnMHOvTWftM3dS05XyCKeV0=;
        b=X8zL0+5ESJWu2R+QXHcVWQzDVbXiWaM/WU/y+NMXdm6tN1yU9RBUzTpUfHCT2zzQ8H
         PCoWQbprwzXLhujq4flspCJVv5sXB0/Vdult7jelFM3jhwckp6AJaQGO+URHeJh1C9Fi
         oea7qUO7ws5CEQ8asE7lUgyBDHOCMANrLez54emWBxoV5sM+FFKVFFg2OznOq7iymctd
         XR2tLRBKplvbLSTdsrD07HE9JWsF9h15dbu0pnJwJAUh/yQE5dAW/VT7ptJ9210/kOiW
         m0hHavbwXzscUxIfVnqSTs4+zRIjmYBiQ/bpOJ1gQDxu6aH+q/DnedQsfE4JjC81ZI4U
         Rpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682008961; x=1684600961;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tc2FEfhpHVyAUvvliyz1TnMHOvTWftM3dS05XyCKeV0=;
        b=RPutbuFKwRKhakka+gCEknqtR/7UncUKNXn8P9z3J302DWjTYsO58gZjYjVewEsCuH
         gZbZh59YFG3FkKk7/AdlyEBJuJDAG2X3Yzr/M3+z8ItUZEJ5skOm8Y83iiOKIEPt+N3x
         5tSlKFZI1mgxmOj8unWAih3MlwPEMS3pcukt0aSmKR2AHxcOe9kCAsryFstDio/Xg8al
         pHLwxCR9iB4C40IL7RHsOesPs7BtzIDMQd+UWQ5wTqHvGA35vXOSE6nqa1PvP8uJ9WY1
         Lkpv6ZDAvw8qkVvT1H30YnYlU/SN2b5lJezwiBUv6VvzTqtKW7dVIA8u/Wc4zumm2Vvw
         Z4Mg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9ei8JRVsQpYOhIKMObz2rcshfj2DkN+2G+VlfGHJCW/pWLKFP8E
	OYIRHVKlqbYP71yESXjleW4=
X-Google-Smtp-Source: AKy350Y+Wqt3K81xJGrFt1S4dP12iyq95VaNTFz8er0FVp+YxugOkjSqEvq7qkOh4O7ZtoG8cahT/g==
X-Received: by 2002:a05:6214:1631:b0:5ef:423d:3f83 with SMTP id e17-20020a056214163100b005ef423d3f83mr306040qvw.7.1682008960839;
        Thu, 20 Apr 2023 09:42:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:4a09:b0:3ef:4181:88b4 with SMTP id
 fv9-20020a05622a4a0900b003ef418188b4ls2403751qtb.5.-pod-prod-gmail; Thu, 20
 Apr 2023 09:42:39 -0700 (PDT)
X-Received: by 2002:ac8:4e87:0:b0:3ef:2649:44ae with SMTP id 7-20020ac84e87000000b003ef264944aemr3364206qtp.13.1682008958941;
        Thu, 20 Apr 2023 09:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682008958; cv=none;
        d=google.com; s=arc-20160816;
        b=HxUA/JAV2lGW0Hd8ClTnbiwhFOErfN2WGK29JYGU9pC/H738hnC7i/87abcN/GibTw
         5VOr3FXJBr/sMDWGLnI7Qe0BU1kjPYsQjb5RHdwvjn1kSElNVj+V8mQY5NMTAcsHpbO8
         ROvJMAsUN5aCVoJN2bMLWOHyHThr8go+vJXPbeOs0SsI3+S7pbFwndZlvHf2hcyWweVE
         H2Sza5VJhlnsNQfc443+n2c3axM4wFGrxCDVw5VF13oa+Xfj/mxrJKyi10oRBMeEpKQN
         qXicEYweL2nqlcW1SdjVEjpmbO3TIgfl2JLA6TMNIIAazFjlOTlqnJs0jUyXo6JQ6S7X
         ysbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=I6fTE8uyJF5qu0Pi8nEHi/Tjr/m72N2RiPgDazf02xk=;
        b=glDh3tXaNai+LF1xzhO4f/jj7eTO79kf+upmrT2GCECZXSEgn7kYUgH86RX5dCJ2EW
         R2GiO2FmWFeYSUm5J9Jnb4kP/WXNO1FqlLTsgN7yUh9q2lFNYEAc2tTLqNwdiJU77w4/
         23Oerzz6tfv0YzPxeLOvgYt5x+LUCAhAjzXh5q5ZCl8hVfmOZ1EhaFoMZygAC3AuAZCe
         n+gKtFhk2PVsA+25cuIYIh5JhtXLzPiTCW4kATk43QAVcD2NeJb0HUirqUNcqTecvIWE
         AxCsglkCgb8YnBfLYrxfgNuZhcpDUmwnAcMkAieCnAWXlyhjYKYKxiMc7vV6IOXzQTC1
         vs6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EBFaksbz;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id dv24-20020a05620a1b9800b0074e0ec27c8dsi95486qkb.0.2023.04.20.09.42.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 09:42:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-375-CJwRyV7GMX6wC-bShp44cQ-1; Thu, 20 Apr 2023 12:42:35 -0400
X-MC-Unique: CJwRyV7GMX6wC-bShp44cQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E4B6185A78F;
	Thu, 20 Apr 2023 16:42:34 +0000 (UTC)
Received: from localhost (unknown [10.2.16.204])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB19B2026D16;
	Thu, 20 Apr 2023 16:42:33 +0000 (UTC)
Date: Thu, 20 Apr 2023 09:42:32 -0700
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <leeman.duncan@gmail.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	netdev@vger.kernel.org, Lee Duncan <lduncan@suse.com>
Subject: Re: [RFC PATCH 2/9] iscsi: associate endpoints with a host
Message-ID: <20230420164232.GA27885@localhost>
Mail-Followup-To: Lee Duncan <leeman.duncan@gmail.com>,
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	netdev@vger.kernel.org, Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EBFaksbz;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

On Wed, Feb 08, 2023 at 09:40:50AM -0800, Lee Duncan wrote:
> Right now the iscsi_endpoint is only linked to a connection once that
> connection has been established.  For net namespace filtering of the
> sysfs objects, associate an endpoint with the host that it was
> allocated for when it is created.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
> 
> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
> index 6b7603765383..212fa7aa9810 100644
> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
> @@ -802,7 +802,7 @@ static struct iscsi_endpoint *iscsi_iser_ep_connect(struct Scsi_Host *shost,
>  	struct iser_conn *iser_conn;
>  	struct iscsi_endpoint *ep;
>  
> -	ep = iscsi_create_endpoint(0);
> +	ep = iscsi_create_endpoint(shost, 0);
>  	if (!ep)
>  		return ERR_PTR(-ENOMEM);

I started trying[1] to look at iSER, and I think this is a problem.
iSER is the only iSCSI driver that uses endpoint objects, but does not
require then to be bound to a host.  That means that
iscsi_iser_ep_connect can be called with a null shost.

So this fails, and not in a new namespace.
It just breaks iSER entirely.

I think we need to preserve support for the iscsi_endpoint device
having a virtual device path for iSER.

Also, enabling net namespace support for iSER might require the ability
to create an endpoint directly in a namespace instead of on a host.
Kind of like the create_session discussion for iscsi_tcp.

- Chris

[1] I say trying, becuase before going and borrowing an RDMA setup I
thought I'd give the kernel target and either siw or rxe a try. The
isert module seems to have issues with siw, and I think maybe any iWARP,
where setting enable_iser on a port will try and re-use the TCP port
number and fail due to it being in use.  With rxe my host failed, but
that's becuase of this create_endpoint issue.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230420164232.GA27885%40localhost.
